function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    Base.precompile(Tuple{typeof(_sparsifystructured),Vector{Float64}})   # time: 0.011018478
    isdefined(SparseArrays.HigherOrderFns, Symbol("#3#4")) && Base.precompile(Tuple{getfield(SparseArrays.HigherOrderFns, Symbol("#3#4")),Float64,Float64})   # time: 0.002866678
    Base.precompile(Tuple{typeof(_allocres),Tuple{Int64},Type{Int64},Type{Float64},Int64})   # time: 0.002422772
    isdefined(SparseArrays.HigherOrderFns, Symbol("#3#4")) && Base.precompile(Tuple{getfield(SparseArrays.HigherOrderFns, Symbol("#3#4")),Float64,Float64})   # time: 0.002399164
end
