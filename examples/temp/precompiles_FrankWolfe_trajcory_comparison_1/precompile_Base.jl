function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    Base.precompile(Tuple{typeof(getindex),Dict{Int32, Symbol},Int32})   # time: 0.005642589
    Base.precompile(Tuple{typeof(string),Int64})   # time: 0.00420967
end
