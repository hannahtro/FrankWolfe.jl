function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    Base.precompile(Tuple{typeof(broadcasted),typeof(-),Int64,Float64})   # time: 0.001537927
    Base.precompile(Tuple{typeof(broadcasted),typeof(-),Int64,BigFloat})   # time: 0.001077736
end
