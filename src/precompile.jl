#using JuMP
using SentinelArrays

#Main
Base.precompile(Tuple{typeof(Base.print),Base.GenericIOBuffer{Array{UInt8,1}}, FrankWolfe.Shortstep})
Base.precompile(Tuple{Core.kwftype(typeof(FrankWolfe.frank_wolfe)),NamedTuple{(:max_iteration, :line_search, :L, :print_iter, :emphasis, :verbose, :trajectory), Tuple{Int64, FrankWolfe.Shortstep, Int64, Float64, FrankWolfe.Emphasis, Bool, Bool}},typeof(FrankWolfe.frank_wolfe),Function,Function,FrankWolfe.ProbabilitySimplexOracle{Float64},Vector{Float64}})   # time: 0.28827453
Base.precompile(Tuple{Core.kwftype(typeof(FrankWolfe.frank_wolfe)),NamedTuple{(:max_iteration, :line_search, :L, :print_iter, :emphasis, :verbose, :epsilon, :trajectory), Tuple{Int64, Agnostic, Int64, Float64, Emphasis, Bool, Float64, Bool}},typeof(frank_wolfe),Function,Function,ProbabilitySimplexOracle{Float64},ScaledHotVector{Float64}})   # time: 0.38316718
Base.precompile(Tuple{typeof(Printf.format),Base.TTY,Printf.Format{Base.CodeUnits{UInt8, String}, Tuple{Printf.Spec{Val{'s'}}, Printf.Spec{Val{'s'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}}},String,String,Vararg{Any, N} where N})   # time: 0.17503943
Base.precompile(Tuple{typeof(Printf.format),Base.TTY,Printf.Format{Base.CodeUnits{UInt8, String}, NTuple{7, Printf.Spec{Val{'s'}}}},String,String,Vararg{String, N} where N})   # time: 0.05030084
Base.precompile(Tuple{typeof(print),IOBuffer,FrankWolfe.Shortstep})   # time: 0.009745528
Base.precompile(Tuple{typeof(print),IOBuffer,Agnostic})   # time: 0.039685145
Base.precompile(Tuple{typeof(FrankWolfe.print_callback),Tuple{String, String, Float64, Float64, Float64, Float64, Float64},String})   # time: 0.005003308
Base.precompile(Tuple{Core.kwftype(typeof(print_callback)),NamedTuple{(:print_header,), Tuple{Bool}},typeof(print_callback),Vector{String},String})   # time: 0.001166138
Base.precompile(Tuple{Core.kwftype(typeof(frank_wolfe)),NamedTuple{(:epsilon, :max_iteration, :print_iter, :trajectory, :verbose, :linesearch_tol, :line_search, :emphasis, :gradient), Tuple{Float64, Int64, Float64, Bool, Bool, Float64, Adaptive, Emphasis, SparseArrays.SparseMatrixCSC{Float64, Int64}}},typeof(frank_wolfe),Function,Function,NuclearNormLMO{Float64},RankOneMatrix{Float64, Vector{Float64}, Vector{Float64}}})   # time: 3.9857857
Base.precompile(Tuple{typeof(line_search_wrapper),Adaptive,Int64,Function,Function,Matrix{Float64},Matrix{Float64},SparseArrays.SparseMatrixCSC{Float64, Int64},Float64,Float64,Int64,Float64,Int64,Float64})   # time: 0.21974504
Base.precompile(Tuple{typeof(print),IOBuffer,Adaptive})   # time: 0.03642198
Base.precompile(Tuple{typeof(print_callback),Tuple{String, String, Float64, Any, Any, Float64, Float64},String})   # time: 0.00481568
Base.precompile(Tuple{Core.kwftype(typeof(frank_wolfe)),NamedTuple{(:max_iteration, :line_search, :L, :print_iter, :emphasis, :verbose, :epsilon, :trajectory), Tuple{Int64, Adaptive, Int64, Float64, Emphasis, Bool, Float64, Bool}},typeof(frank_wolfe),Function,Function,KSparseLMO{Float64},SparseVector{Float64, Int64}})   # time: 2.12536
Base.precompile(Tuple{typeof(line_search_wrapper),Adaptive,Int64,Function,Function,SparseVector{Float64, Int64},SparseVector{Float64, Int64},SparseVector{Float64, Int64},Float64,Float64,Int64,Float64,Int64,Float64})   # time: 0.010285528
Base.precompile(Tuple{Core.kwftype(typeof(frank_wolfe)),NamedTuple{(:max_iteration, :line_search, :L, :print_iter, :emphasis, :verbose, :trajectory), Tuple{Int64, Shortstep, Int64, Float64, Emphasis, Bool, Bool}},typeof(frank_wolfe),Function,Function,KSparseLMO{Float64},SparseVector{Float64, Int64}})   # time: 0.27901062
Base.precompile(Tuple{Core.kwftype(typeof(frank_wolfe)),NamedTuple{(:max_iteration, :line_search, :print_iter, :epsilon, :emphasis, :trajectory, :verbose), Tuple{Int64, Adaptive, Float64, Float64, Emphasis, Bool, Bool}},typeof(frank_wolfe),Function,Function,BirkhoffPolytopeLMO,SparseArrays.SparseMatrixCSC{Float64, Int64}})   # time: 1.8963768
Base.precompile(Tuple{Core.kwftype(typeof(frank_wolfe)),NamedTuple{(:max_iteration, :line_search, :print_iter, :verbose, :emphasis), Tuple{Int64, Agnostic, Float64, Bool, Emphasis}},typeof(frank_wolfe),Function,Function,ProbabilitySimplexOracle{Rational{BigInt}},ScaledHotVector{Rational{BigInt}}})   # time: 0.4049498
Base.precompile(Tuple{Core.kwftype(typeof(frank_wolfe)),NamedTuple{(:max_iteration, :line_search, :print_iter, :verbose), Tuple{Float64, Nonconvex, Float64, Bool}},typeof(frank_wolfe),Function,Function,ProbabilitySimplexOracle{Float64},Vector{Float64}})   # time: 0.050085537

#Printf
Base.precompile(Tuple{typeof(Printf.format),Base.TTY,Printf.Format{Base.CodeUnits{UInt8, String}, Tuple{Printf.Spec{Val{'s'}}, Printf.Spec{Val{'s'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}}},String,String,Vararg{Any, N} where N})   # time: 0.17503943
Base.precompile(Tuple{typeof(Printf.format),Base.TTY,Printf.Format{Base.CodeUnits{UInt8, String}, NTuple{7, Printf.Spec{Val{'s'}}}},String,String,Vararg{String, N} where N})   # time: 0.05030084
Base.precompile(Tuple{typeof(Printf.format),Vector{UInt8},Int64,Printf.Format{Base.CodeUnits{UInt8, String}, Tuple{Printf.Spec{Val{'s'}}, Printf.Spec{Val{'s'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}, Printf.Spec{Val{'e'}}}},String,Vararg{Any, N} where N})   # time: 0.020787507
Base.precompile(Tuple{typeof(Printf.format),Vector{UInt8},Int64,Printf.Format{Base.CodeUnits{UInt8, String}, NTuple{7, Printf.Spec{Val{'s'}}}},String,Vararg{String, N} where N})   # time: 0.012548637
Base.precompile(Tuple{typeof(Printf.format),Base.TTY,Printf.Format{Base.CodeUnits{UInt8, String}, Tuple{Printf.Spec{Val{'s'}}}},String})   # time: 0.006675636
Base.precompile(Tuple{typeof(Printf.fmt),Vector{UInt8},Int64,Float64,Printf.Spec{Val{'e'}}})   # time: 0.006011838
Base.precompile(Tuple{typeof(Printf.format),Base.TTY,Printf.Format{Base.CodeUnits{UInt8, String}, NTuple{7, Printf.Spec{Val{'s'}}}},String,String,Vararg{String, N} where N})    # time: 0.026103133
Base.precompile(Tuple{typeof(Printf.format),Vector{UInt8},Int64,Printf.Format{Base.CodeUnits{UInt8, String}, NTuple{7, Printf.Spec{Val{'s'}}}},String,Vararg{String, N} where N})   # time: 0.01322379

#Base
Base.precompile(Tuple{typeof(show),IOBuffer,Type})   # time: 0.0786868
Base.precompile(Tuple{typeof(getindex),Dict{Int32, Symbol},Int32})   # time: 0.006390822
Base.precompile(Tuple{typeof(string),Int64})   # time: 0.004863662
#Base.precompile(Tuple{typeof(_isdisjoint),Tuple{UInt64},Tuple{UInt64, UInt64}})   # time: 0.001415542
Base.precompile(Tuple{typeof(mod),Int64,Float64})   # time: 0.001056139
Base.precompile(Tuple{typeof(sum),Base.Generator{Vector{Tuple{Int64, Int64}}, _A} where _A})   # time: 0.003444421
Base.precompile(Tuple{typeof(/),UInt64,Float64})   # time: 0.001376947
Base.precompile(Tuple{typeof(>),BigFloat,Float64})   # time: 0.001060996
Base.precompile(Tuple{typeof(>),Float64,BigFloat})   # time: 0.00100764
Base.precompile(Tuple{typeof(max),Float64,Int64})   # time: 0.002054901

#Broadcast
Base.precompile(Tuple{typeof(Base.Broadcast.materialize!),Vector{Float64},Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Nothing, typeof(*), Tuple{Int64, Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Nothing, typeof(-), Tuple{Vector{Float64}, Vector{Float64}}}}}})   # time: 0.015763668
Base.precompile(Tuple{typeof(Base.Broadcast.broadcasted),typeof(*),Int64,Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{1}, Nothing, typeof(-), Tuple{Vector{Float64}, Vector{Float64}}}})   # time: 0.002645462
Base.precompile(Tuple{typeof(Base.Broadcast.materialize!),Matrix{Float64},Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{2}, Nothing, typeof(-), Tuple{Matrix{Float64}, Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{2}, Nothing, typeof(*), Tuple{Float64, Matrix{Float64}}}}}})   # time: 0.023878872
Base.precompile(Tuple{typeof(Base.Broadcast.broadcasted),Function,Matrix{Float64},Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{2}, Nothing, typeof(*), Tuple{Float64, Matrix{Float64}}}})   # time: 0.004955574
Base.precompile(Tuple{typeof(Base.Broadcast.broadcasted),Function,Float64,Matrix{Float64}})   # time: 0.004528847
Base.precompile(Tuple{typeof(Base.Broadcast.broadcasted),typeof(+),Int64,UnitRange{Int64}})   # time: 0.001500464
#Base.precompile(Tuple{TypeBase.Broadcast.{Base.Broadcast.Broadcasted{DefaultArrayStyle{2}, Axes, F, Args} where {Axes, F, Args<:Tuple}},typeof(-),Tuple{Matrix{Float64}, Base.Broadcast.Broadcasted{Base.Broadcast.DefaultArrayStyle{2}, Nothing, typeof(*), Tuple{Float64, Matrix{Float64}}}}})   # time: 0.001378104
Base.precompile(Tuple{typeof(Base.Broadcast._broadcast_getindex),Base.Broadcast.Extruded{Matrix{Float64}, Tuple{Bool, Bool}, Tuple{Int64, Int64}},CartesianIndex{2}})   # time: 0.001329218
Base.precompile(Tuple{typeof(Base.Broadcast.broadcasted),typeof(+),Int64,UnitRange{Int64}})   # time: 0.001500464
Base.precompile(Tuple{typeof(Base.Broadcast.broadcasted),typeof(Base.literal_pow),typeof(^),Any,Val{2}})   # time: 0.67692775

#CoreLogging
Base.precompile(Tuple{typeof(Base.CoreLogging.current_logger_for_env),Base.CoreLogging.LogLevel,Symbol,Module})   # time: 0.028930278

# SparseArrays
Base.precompile(Tuple{typeof(getindex),SparseVector{Float64, Int64},Int64})   # time: 0.002540696
Base.precompile(Tuple{typeof(SparseArrays.widelength),SparseVector{Float64, Int64}})   # time: 0.005543157
Base.precompile(Tuple{typeof(mul!),Vector{Float64},SparseArrays.SparseMatrixCSC{Float64, Int64},SubArray{Float64, 1, _B, Tuple{UnitRange{Int64}}, true} where _B<:Union{Base.ReinterpretArray{T, N, S, A, IsReshaped} where {T, N, A<:Union{SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, IsReshaped, S}, SparseArrays.ReshapedArray{T, N, A, MI} where {T, N, A<:Union{Base.ReinterpretArray{T, N, S, A, IsReshaped} where {T, N, A<:Union{SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, IsReshaped, S}, SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, MI<:Tuple{Vararg{Base.MultiplicativeInverses.SignedMultiplicativeInverse{Int64}, N} where N}}, DenseArray},Bool,Bool})   # time: 0.02184287
Base.precompile(Tuple{typeof(mul!),Vector{Float64},Adjoint{Float64, SparseArrays.SparseMatrixCSC{Float64, Int64}},SubArray{Float64, 1, _B, Tuple{UnitRange{Int64}}, true} where _B<:Union{Base.ReinterpretArray{T, N, S, A, IsReshaped} where {T, N, A<:Union{SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, IsReshaped, S}, SparseArrays.ReshapedArray{T, N, A, MI} where {T, N, A<:Union{Base.ReinterpretArray{T, N, S, A, IsReshaped} where {T, N, A<:Union{SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, IsReshaped, S}, SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, MI<:Tuple{Vararg{Base.MultiplicativeInverses.SignedMultiplicativeInverse{Int64}, N} where N}}, DenseArray},Bool,Bool})   # time: 0.017265763
Base.precompile(Tuple{typeof(spzeros),Int64,Int64})   # time: 0.010850303
Base.precompile(Tuple{typeof(mul!),SubArray{Float64, 1, _B, Tuple{UnitRange{Int64}}, true} where _B<:Union{Base.ReinterpretArray{T, N, S, A, IsReshaped} where {T, N, A<:Union{SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, IsReshaped, S}, SparseArrays.ReshapedArray{T, N, A, MI} where {T, N, A<:Union{Base.ReinterpretArray{T, N, S, A, IsReshaped} where {T, N, A<:Union{SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, IsReshaped, S}, SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, MI<:Tuple{Vararg{Base.MultiplicativeInverses.SignedMultiplicativeInverse{Int64}, N} where N}}, DenseArray},Adjoint{Float64, SparseArrays.SparseMatrixCSC{Float64, Int64}},Vector{Float64},Bool,Bool})   # time: 0.007065549
Base.precompile(Tuple{typeof(*),SparseArrays.SparseMatrixCSC{Float64, Int64},Matrix{Float64}})   # time: 0.005822867
Base.precompile(Tuple{typeof(mul!),SubArray{Float64, 1, _B, Tuple{UnitRange{Int64}}, true} where _B<:Union{Base.ReinterpretArray{T, N, S, A, IsReshaped} where {T, N, A<:Union{SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, IsReshaped, S}, SparseArrays.ReshapedArray{T, N, A, MI} where {T, N, A<:Union{Base.ReinterpretArray{T, N, S, A, IsReshaped} where {T, N, A<:Union{SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, IsReshaped, S}, SubArray{T, N, A, I, true} where {T, N, A<:DenseArray, I<:Union{Tuple{Vararg{Real, N} where N}, Tuple{AbstractUnitRange, Vararg{Any, N} where N}}}, DenseArray}, MI<:Tuple{Vararg{Base.MultiplicativeInverses.SignedMultiplicativeInverse{Int64}, N} where N}}, DenseArray},SparseArrays.SparseMatrixCSC{Float64, Int64},Vector{Float64},Bool,Bool})   # time: 0.004844038
Base.precompile(Tuple{typeof(setindex!),SparseArrays.SparseMatrixCSC{Float64, Int64},Any,Int64,Int64})   # time: 0.004176986
Base.precompile(Tuple{typeof(setindex!),SparseArrays.SparseMatrixCSC{Float64, Int64},Float64,Int64,Int64})   # time: 0.003730561
Base.precompile(Tuple{typeof(fill!),SparseArrays.SparseMatrixCSC{Float64, Int64},Int64})   # time: 0.003499388

#Iterators
Base.precompile(Tuple{typeof(iterate),Iterators.Zip{Tuple{Int64, Int64}}})   # time: 0.001524352

#Jump Containers
#Base.precompile(Tuple{Type{JuMP.Containers.DenseAxisArray},Core.Array{T, N},Any,Tuple{Vararg{_AxisLookup, N}} where {T,N}})

#SparseArrays.HigherOrderFns
Base.precompile(Tuple{typeof(SparseArrays.HigherOrderFns._sparsifystructured),Vector{Float64}})   # time: 0.004664484
Base.precompile(Tuple{getfield(SparseArrays.HigherOrderFns, Symbol("#3#4")),Float64,Float64})   # time: 0.002634265
isdefined(SparseArrays.HigherOrderFns, Symbol("#3#4")) && Base.precompile(Tuple{getfield(SparseArrays.HigherOrderFns, Symbol("#3#4")),BigFloat,Float64})   # time: 0.00150329
isdefined(SparseArrays.HigherOrderFns, Symbol("#3#4")) && Base.precompile(Tuple{getfield(SparseArrays.HigherOrderFns, Symbol("#3#4")),Float64,Float64})   # time: 0.001362288

#SentinelArrays
Base.precompile(Tuple{typeof(Base.Broadcast.broadcasted),typeof(big),SentinelArrays.ChainedVector})   # time: 0.107109085
