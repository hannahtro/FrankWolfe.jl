
"""
    MathOptLMO{OT <: MOI.Optimizer} <: LinearMinimizationOracle

Linear minimization oracle with feasible space defined through a MathOptInterface.Optimizer.
The oracle call sets the direction and reruns the optimizer.

The `direction` vector has to be set in the same order of variables as the `MOI.ListOfVariableIndices()` getter.
"""
struct MathOptLMO{OT<:MOI.AbstractOptimizer} <: LinearMinimizationOracle
    o::OT
end

function compute_extreme_point(lmo::MathOptLMO{OT}, direction::AbstractVector{T}; kwargs...) where {OT,T<:Real}
    variables = MOI.get(lmo.o, MOI.ListOfVariableIndices())
    for i in eachindex(variables)
        MOI.modify(
            lmo.o,
            MOI.ObjectiveFunction{MOI.ScalarAffineFunction{T}}(),
            MOI.ScalarCoefficientChange(variables[i], direction[i]),
        )
    end
    return _optimize_and_return(lmo, variables)
end

function compute_extreme_point(lmo::MathOptLMO{OT}, direction::AbstractMatrix{T}; kwargs...) where {OT,T<:Real}
    n = size(direction, 1)
    v = compute_extreme_point(lmo, vec(direction))
    return reshape(v, n, n)
end

function Base.copy(lmo::MathOptLMO{OT}; ensure_identity=true) where {OT}
    opt = OT() # creates the empty optimizer
    index_map = MOI.copy_to(opt, lmo.o)
    if ensure_identity
        for (src_idx, des_idx) in index_map.var_map
            if src_idx != des_idx
                error("Mapping of variables is not identity")
            end
        end
    end
    return MathOptLMO(opt)
end

function Base.copy(lmo::MathOptLMO{OT}; ensure_identity=true) where {OTI, OT <: MOIU.CachingOptimizer{OTI}}
    opt = MOIU.CachingOptimizer(
        MOI.Utilities.UniversalFallback(MOI.Utilities.Model{Float64}()),
        OTI(),
    )
    index_map = MOI.copy_to(opt, lmo.o)
    if ensure_identity
        for (src_idx, des_idx) in index_map.var_map
            if src_idx != des_idx
                error("Mapping of variables is not identity")
            end
        end
    end
    return MathOptLMO(opt)
end


function compute_extreme_point(
    lmo::MathOptLMO{OT},
    direction::AbstractVector{MOI.ScalarAffineTerm{T}};
    kwargs...
) where {OT,T}
    for d in direction
        MOI.modify(
            lmo.o,
            MOI.ObjectiveFunction{MOI.ScalarAffineFunction{T}}(),
            MOI.ScalarCoefficientChange(d.variable,d.coefficient),
        )
    end

    variables = MOI.get(lmo.o, MOI.ListOfVariableIndices())
    variables_to_zero = setdiff(variables, [dir.variable for dir in direction])

    terms = [MOI.ScalarAffineTerm(d, v) for (d, v) in zip(zeros(length(variables_to_zero)), variables_to_zero)]
    
    for t in terms
        MOI.modify(
            lmo.o,
            MOI.ObjectiveFunction{MOI.ScalarAffineFunction{T}}(), 
            MOI.ScalarCoefficientChange(t.variable,t.coefficient),
        )
    end
    return _optimize_and_return(lmo, variables)
end

function _optimize_and_return(lmo, variables)
    MOI.optimize!(lmo.o)
    term_st = MOI.get(lmo.o, MOI.TerminationStatus())
    if term_st ∉ (MOI.OPTIMAL, MOI.ALMOST_OPTIMAL, MOI.SLOW_PROGRESS)
        @error "Unexpected termination: $term_st"
        return MOI.get.(lmo.o, MOI.VariablePrimal(), variables)
    end
    return MOI.get.(lmo.o, MOI.VariablePrimal(), variables)
end

"""
    convert_mathopt(lmo::LMO, optimizer::OT; kwargs...) -> MathOptLMO{OT}

Converts the given LMO to its equivalent MathOptInterface representation using `optimizer`.
Must be implemented by LMOs.
"""
function convert_mathopt end
