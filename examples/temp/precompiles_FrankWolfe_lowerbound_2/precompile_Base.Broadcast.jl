function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    Base.precompile(Tuple{typeof(materialize),Broadcasted{DefaultArrayStyle{1}, Nothing, typeof(big), Tuple{Vector{Float64}}}})   # time: 0.022447899
    Base.precompile(Tuple{typeof(broadcasted),typeof(big),Vector{Float64}})   # time: 0.004573975
    isdefined(Base.Broadcast, Symbol("#5#6")) && Base.precompile(Tuple{getfield(Base.Broadcast, Symbol("#5#6")),Float64,Int64,Vararg{Any, N} where N})   # time: 0.00323305
    isdefined(Base.Broadcast, Symbol("#8#10")) && Base.precompile(Tuple{getfield(Base.Broadcast, Symbol("#8#10")),Int64,Float64,Float64,Float64})   # time: 0.001467904
end
