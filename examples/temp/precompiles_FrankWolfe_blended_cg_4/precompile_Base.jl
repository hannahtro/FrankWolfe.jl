function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    Base.precompile(Tuple{typeof(getindex),Dict{Int32, Symbol},Int32})   # time: 0.005554606
    Base.precompile(Tuple{typeof(axes),UnitRange{Int64}})   # time: 0.001177433
end
