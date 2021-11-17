function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    Base.precompile(Tuple{Core.kwftype(typeof(away_frank_wolfe)),NamedTuple{(:epsilon, :max_iteration, :print_iter, :trajectory, :verbose, :linesearch_tol, :lazy, :line_search, :emphasis), Tuple{Float64, Int64, Float64, Bool, Bool, Float64, Bool, Adaptive, Emphasis}},typeof(away_frank_wolfe),Function,Function,NuclearNormLMO{Float64},RankOneMatrix{Float64, Vector{Float64}, Vector{Float64}}})   # time: 3.6690128
    Base.precompile(Tuple{typeof(active_set_update!),ActiveSet{RankOneMatrix{Float64, Vector{Float64}, Vector{Float64}}, Float64, Matrix{Float64}},Float64,RankOneMatrix{Float64, Vector{Float64}, Vector{Float64}},Bool,Nothing})   # time: 0.10526101
    Base.precompile(Tuple{typeof(active_set_update!),ActiveSet{RankOneMatrix{Float64, Vector{Float64}, Vector{Float64}}, Float64, Matrix{Float64}},Float64,RankOneMatrix{Float64, Vector{Float64}, Vector{Float64}},Bool,Int64})   # time: 0.03874479
    Base.precompile(Tuple{typeof(line_search_wrapper),Adaptive,Int64,Function,Function,Matrix{Float64},Matrix{Float64},Matrix{Float64},Float64,Float64,Int64,Float64,Int64,Int64})   # time: 0.018111425
    isdefined(FrankWolfe, Symbol("#push_trajectory!#9")) && Base.precompile(Tuple{getfield(FrankWolfe, Symbol("#push_trajectory!#9")),NamedTuple{(:t, :primal, :dual, :dual_gap, :time, :x, :v, :active_set_length, :gamma), Tuple{Int64, Float64, Float64, Float64, Float64, Matrix{Float64}, RankOneMatrix{Float64, Vector{Float64}, Vector{Float64}}, Int64, Float64}}})   # time: 0.012111209
    Base.precompile(Tuple{typeof(line_search_wrapper),Adaptive,Int64,Function,Function,Matrix{Float64},Matrix{Float64},Matrix{Float64},Float64,Float64,Int64,Float64,Int64,Float64})   # time: 0.010992155
    Base.precompile(Tuple{Core.kwftype(typeof(print_callback)),NamedTuple{(:print_header,), Tuple{Bool}},typeof(print_callback),NTuple{8, String},String})   # time: 0.008521122
    Base.precompile(Tuple{Core.kwftype(typeof(lazy_afw_step)),NamedTuple{(:K,), Tuple{Float64}},typeof(lazy_afw_step),Matrix{Float64},Matrix{Float64},NuclearNormLMO{Float64},ActiveSet{RankOneMatrix{Float64, Vector{Float64}, Vector{Float64}}, Float64, Matrix{Float64}},Float64})   # time: 0.008281138
    isdefined(FrankWolfe, Symbol("#push_trajectory!#9")) && Base.precompile(Tuple{getfield(FrankWolfe, Symbol("#push_trajectory!#9")),NamedTuple{(:t, :primal, :dual, :dual_gap, :time, :x, :v, :active_set_length, :gamma), _A} where _A<:Tuple{Int64, Float64, Any, Any, Float64, Matrix{Float64}, RankOneMatrix, Int64, Any}})   # time: 0.003997708
    Base.precompile(Tuple{typeof(print_callback),Tuple{String, String, Float64, Any, Any, Float64, Float64, Int64},String})   # time: 0.002792529
end
