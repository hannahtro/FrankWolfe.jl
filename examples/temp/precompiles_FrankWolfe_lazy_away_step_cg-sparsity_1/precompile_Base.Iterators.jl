function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    Base.precompile(Tuple{typeof(iterate),Zip{Tuple{Int64, Int64}}})   # time: 0.003801217
    Base.precompile(Tuple{typeof(iterate),Zip{Tuple{Int64, Int64}},Tuple{Nothing, Nothing}})   # time: 0.001239392
end
