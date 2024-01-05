## You can use the following commands to test it out on Julia command line console.



julia> numbers = [1, 2, 3, 4, 5] 
5-element Array{Int64,1}: 
1 
2 
3 
4 
5 
julia> names = ["Alice", "Bob", "Charlie", "Daisy"] 
4-element Array{String,1}: 
"Alice" 
"Bob" 
"Charlie" 
"Daisy" 
julia> mixed = [1, "Bob", 3.14, true] 
4-element Array{Any,1}: 
1 
"Bob" 
3.14 
true 






julia> numbers = [1, 2, 3, 4, 5] 
5-element Array{Int64,1}: 
1 
2
3 
4 
5 
julia> numbers[1] # returns 1 (the first element) 
1 
julia> numbers[3] # returns 3 (the third element) 
3 
julia> numbers[end] # returns 5 (the last element) 
5 
julia> numbers[end-1] # returns 4 (the second last element) 
4 








julia> numbers = [1, 2, 3, 4, 5] # Vector is a 1-dimensional Array, so when we write Vector{Int} it is a shorthand to Array{Int, 1}. In new Julia versions, Vector{Int} will show by default 
5-element Array{Int64,1}: 
1 
2
3 
4 
5 
julia> numbers[2:3] # returns [2, 3, 4] (items at index 2, 3, and 4) 3-element Array{Int64,1}: 
2 
3 
julia> numbers[2:4] # returns [2, 3, 4, 5] (items from index 2 to the end) 4-element Array{Int64,1}: 
2 
3 
4 
julia> numbers[1:3] # returns [1, 2, 3] (items from the start to index 3) 3-element Array{Int64,1}: 
1 
2 
3 
julia> numbers[1:2:end] # returns [1, 3, 5] (all items with a step of 2) 3-element Array{Int64,1}: 
1 
3 
5 







julia> numbers = [1, 2, 3, 4, 5] 
5-element Array{Int64,1}: 
1
2 
3 
4 
5 







julia> collect(1:5) # creates an array of the values 1, 2, 3, 4, 5 5-element Array{Int64,1}: 
1 
2 
3 
4 
5 
julia> collect(1:2:9) # creates an array of the values 1, 3, 5, 7, 9 5-element Array{Int64,1}: 
1 
3 
5 
7 
9 
julia> collect("hello") 
5-element Vector{Char}: 
'h': ASCII/Unicode U+0068 (category Ll: Letter, lowercase) 
'e': ASCII/Unicode U+0065 (category Ll: Letter, lowercase) 
'l': ASCII/Unicode U+006C (category Ll: Letter, lowercase) 
'l': ASCII/Unicode U+006C (category Ll: Letter, lowercase)
'o': ASCII/Unicode U+006F (category Ll: Letter, lowercase) 







julia> collect(map(x -> 2x+1, 1:5)) # creates an array of the values 3, 5, 7, 9, 11 5-element Array{Int64,1}: 
3 
5 
7 
9 
11 
julia> using Primes 
julia> collect(filter(isprime, 1:10)) # creates an array of the prime numbers between 1 and 10 
4-element Array{Int64,1}: 
2 
3 
5 
7 
julia> collect(reduce(*, 1:5)) # creates an array with the result of the cumulative product of 1, 2, 3, 4, 5 
0-dimensional Array{Int64, 0}: 
120 







julia> a = [1, 2, 3, 4, 5] 
5-element Array{Int64,1}: 
1
2 
3 
4 
5 
julia> length(a) 
5 
julia> b = [1 2; 3 4] 
2×2 Matrix{Int64}: 
1 2 
3 4 
julia> length(b) 
4 
julia> c = [1 2 3; 4 5 6] 
2×3 Array{Int64,2}: 
1 2 3 
4 5 6 
julia> length(c) 
6 








julia> a = [1, 2, 3, 4, 5] 
5-element Array{Int64,1}: 
1 
2 
3 
4 
5
julia> size(a) 
(5,) 
julia> b = [1 2; 3 4] 
2×2 Array{Int64,2}: 
1 2 
3 4 
julia> size(b) 
(2, 2) 
julia> c = [1 2 3; 4 5 6] 
2×3 Array{Int64,2}: 
1 2 3 
4 5 6 
julia> size(c) 
(2, 3) 








julia> t = (1, "hello", 2.0) 
(1, "hello", 2.0) 
julia> typeof(t) 
Tuple{Int64, String, Float64}






julia> t = (1, 2, 3) 
(1, 2, 3) 
julia> t = ("Alice", "Bob", "Charlie") 
("Alice", "Bob", "Charlie") 
julia> t = (1, "Bob", 3.14, true) 
(1, "Bob", 3.14, true) 






julia> t = (1, 2, 3) 
(1, 2, 3) 
julia> t[1] # returns 1 (the first element) 
1 
julia> t[3] # returns 3 (the third element) 
3 
julia> t[end] # returns 3 (the last element) 
3 
julia> t[end-1] # returns 2 (the second last element) 
2 






julia> t = (1, 2, 3, 4, 5) 
(1, 2, 3, 4, 5) 
julia> t[2:4] # returns (2, 3, 4) (items at index 2, 3, and 4)
(2, 3, 4) 
julia> t[2:5] # returns (2, 3, 4, 5) (items from index 2 to the end) 
(2, 3, 4, 5) 
julia> t[:3] # returns (1, 2, 3) (items from the start to index 3) 
3 
julia> t[1:2:end] # returns (1, 3, 5) (all items with a step of 2) 
(1, 3, 5) 







julia> t = (1, 2, 3) 
(1, 2, 3) 
julia> t[1] = 4 
ERROR: MethodError: no method matching setindex!(::Tuple{Int64, Int64, Int64}, ::Int64, ::Int64) 
Stacktrace: 
[1] top-level scope 
@ REPL[26]:1 
julia> t[2] = 5 
ERROR: MethodError: no method matching setindex!(::Tuple{Int64, Int64, Int64}, ::Int64, ::Int64) 
Stacktrace: 
[1] top-level scope 
@ REPL[27]:1 









julia> t = (1, 2, 3)
(1, 2, 3) 
julia> t = (4, t[2], t[3]) # creates a new tuple with the first element modified 
(4, 2, 3) 
julia> t = (t[1], 5, t[3]) # creates a new tuple with the second element modified 
(4, 5, 3) 
julia> t = (t[1], t[2], 6) # creates a new tuple with the third element modified 
(4, 5, 6) 









julia> d = Dict("a" => 1, "b" => 2, "c" => 3) 
Dict{String,Int64} with 3 entries: 
"a" => 1 
"b" => 2 
"c" => 3 





julia> my_dict = Dict([("a", 1), ("b", 2), ("c", 3)]) 
Dict{String,Int64} with 3 entries: 
"b" => 2 
"a" => 1 
"c" => 3






julia> my_dict["a"] 
1
julia> get(my_dict, "a", 0) 
1 





julia> my_dict["d"] = 4 
4 
julia> my_dict 
Dict{String,Int64} with 4 entries: 
"b" => 2 
"a" => 1 
"c" => 3 
"d" => 4 





julia> my_dict = Dict{String, Int64}(Pair("a", 1), Pair("b", 2), Pair("c", 3)) 
Dict{String,Int64} with 3 entries: 
"b" => 2 
"a" => 1 
"c" => 3 





julia> keytype(my_dict) 
String
julia> valtype(my_dict) 
Int64 






julia> my_dict = Dict("a" => 1, "b" => 2, "c" => 3) 
Dict{String,Int64} with 3 entries: 
"b" => 2 
"a" => 1 
"c" => 3 
You can use keys and values as follows: 
julia> keys(my_dict) 
Base.KeySet for a Dict{String,Int64} with 3 entries. Keys: "b" "a" "c" 
julia> values(my_dict) 
Base.ValueIterator for a Dict{String,Int64} with 3 entries. Values: 2 1 3 





julia> collect(keys(my_dict)) 
3-element Array{String,1}: 
"b" 
"a"
"c" 
julia> collect(values(my_dict)) 
3-element Array{Int64,1}: 
2 
1 
3







julia> my_dict = Dict((i, i^2) for i in 1:5) 
Dict{Int64,Int64} with 5 entries: 
5 => 25 
4 => 16 
3 => 9 
2 => 4
1 => 1 





julia> my_dict = Dict(("a" => 1, "b" => 2, "c" => 3)) 
Dict{String,Int64} with 3 entries: 
"b" => 2 
"a" => 1 
"c" => 3 
julia> new_dict = Dict((k, v + 1) for (k, v) in my_dict) 
Dict{String,Int64} with 3 entries: 
"b" => 3 
"a" => 2 
"c" => 4 





julia> my_dict = Dict("a" => 1, "b" => 2, "c" => 3) 
Dict{String,Int64} with 3 entries: 
"b" => 2
"a" => 1 
"c" => 3 
julia> haskey(my_dict, "a") 
true 
julia> get(my_dict, "a", 0) 
1 
julia> pop!(my_dict, "a", 0) 
1 
julia> my_dict 
Dict{String,Int64} with 2 entries: "b" => 2 
"c" => 3 
julia> delete!(my_dict, "b") 
julia> my_dict 
Dict{String,Int64} with 1 entry: 
"c" => 3 
julia> merge(my_dict, Dict("a" => 1, "d" => 4)) 
Dict{String,Int64} with 3 entries: "d" => 4 
"a" => 1 
"c" => 3 
julia> merge!(my_dict, Dict("a" => 1, "d" => 4)) 
Dict{String,Int64} with 3 entries: "d" => 4
"a" => 1 
"c" => 3 
julia> mergewith(+, my_dict, Dict("a" => 1, "c" => 4)) 
Dict{String,Int64} with 3 entries: 
"d" => 4 
"a" => 2 
"c" => 7 






julia> my_set = Set([1, 2, 3, 4, 4, 5]) 
Set([4, 5, 2, 3, 1])




julia> set1 = Set([1, 2, 3]) 
Set([3, 2, 1]) 
julia> set2 = Set([3, 4, 5]) 
Set([5, 4, 3]) 
julia> union(set1, set2) 
Set([5, 4, 3, 2, 1]) 
julia> intersect(set1, set2) 
Set([3]) 
julia> setdiff(set1, set2) 
Set([2, 1])




julia> push!(set1, 4) 
Set([4, 3, 2, 1]) 
julia> pop!(set1) 
4 
julia> set1 
Set([3, 2, 1]) 





julia> f(x) = x^2 
f (generic function with 1 method) 
julia> arr = [1, 2, 3, 4] 
4-element Array{Int64,1}: 
1 
2 
3 
4 
julia> map(f, arr) 
4-element Array{Int64,1}: 
1 
4 
9 
16 





julia> tup = (1, 2, 3, 4) 
(1, 2, 3, 4) 
julia> map(f, tup) 
(1, 4, 9, 16)




julia> f(x, y) = x + y 
f (generic function with 1 method)
julia> arr = [1, 2, 3, 4] 
4-element Array{Int64,1}: 
1 
2 
3 
4 
julia> reduce(f, arr) 
10 




julia> tup = (1, 2, 3, 4) 
(1, 2, 3, 4) 
julia> reduce(f, tup) 
10 
julia> set = Set([1, 2, 3, 4]) 
Set([4, 3, 2, 1]) 
julia> reduce(f, set) 
10 





julia> f(x) = x % 2 == 0 
f (generic function with 1 method) 
julia> arr = [1, 2, 3, 4, 5] 
5-element Array{Int64,1}: 
1
2 
3 
4 
5 
julia> filter(f, arr) 
2-element Array{Int64,1}: 
2 
4 












 julia> tup = (1, 2, 3, 4, 5) 
(1, 2, 3, 4, 5) 
julia> filter(f, tup) 
(2, 4) 
julia> set = Set([1, 2, 3, 4, 5]) 
Set([5, 4, 3, 2, 1]) 
julia> filter(f, set) 
Set{Int64} with 2 elements: 
4 
2 







julia> f(x) = x^2 
f (generic function with 1 method) 
julia> arr = [1, 2, 3, 4] 
4-element Array{Int64,1}:
1 
2 
3 
4 
julia> f.(arr) 
4-element Array{Int64,1}: 
1 
4 
9 
16 







julia> tup = (1, 2, 3, 4) 
(1, 2, 3, 4) 
julia> f.(tup) 
(1, 4, 9, 16) 
julia> set = Set([1, 2, 3, 4]) 
Set([4, 3, 2, 1]) 
julia> f.(set) 
Set([16, 9, 4, 1]) 







julia> module M 
import InteractiveUtils: subtypes 
export Foo, Bar, f 
abstract type Super end 
struct Foo <: Super end 
struct Bar <: Super end 
const FooConst = 1 
const BarConst = 2 
for T in subtypes(Super) 
@eval f(::Type{$T}) = $(Symbol(nameof(T), "Const")) end 
end # module 
Main.M 
julia> using .M; f(Foo) 
1 
julia> f(Bar) 
2 







function f(::Type{Foo}) 
return FooConst 
end 
function f(::Type{Bar}) 
return BarConst 
end 






julia> using PyCall 
# Evaluate a Python expression and capture the result 
julia> py"2 + 2" 
4 







julia> using PyCall 
# Call a Python function 
julia> @pyimport math 
julia> println(math.sin(math.pi / 2)) 
1.0 
# Use a Python library 
julia> @pyimport numpy as np 
julia> a = np.array([1, 2, 3]) 
julia> println(a .+ 1) 
[2, 3, 4] 
# Define the Python function 
julia> @pyimport math 
julia> function py_sin(x) 
return math.sin(x) 
end 
# Call the Python function from Julia 
julia> julia_sin(x) = py_sin(x)
julia> julia_sin(math.pi/2) 
1.0 







julia> using PyPlot 
julia> x = range(0, 2*pi, 100) 
0.0:0.06346651825433926:6.283185307179586 
julia> plot(x) 
1-element Vector{PyObject}: 
PyObject <matplotlib.lines.Line2D object at 0x7f7ea90c2d00> 







julia> using Conda 
julia> Conda.runconda(`create -y --name pyenv numpy`) 
[ Info: Running `conda create -y --name pyenv numpy` in root 
environment Collecting package metadata (current_repodata.json): done Solving environment: done 
julia> Conda.add("numpy") 
[ Info: Running `conda install -y numpy` in root environment 
Collecting package metadata (current_repodata.json): done 
Solving environment: done 






julia> using RCall 
# Evaluate an R expression and capture the result 
julia> r"2 + 2" 
4 



