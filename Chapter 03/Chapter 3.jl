## You can use the following commands to test it out on Julia command line console.





julia> function saluer(name) 
println("Bonjour, $name") 
end



julia> saluer("Julia") 
This would print "Bonjour, Julia" on the screen. 



julia> function saluer(name) 
println("Bienvenue, $name") 
end 



julia> function saluer(name) 
println("Bonne nuit, $name") 
end 




julia> saluer("Julia") 
This would print "Bonne nuit, Julia" on the screen. 





julia> function add_two_numbers(x, y) 
return x + y 
end 
julia> function _private_function() 
# do something 
end 
julia> function compute_average(numbers) 
total = sum(numbers) 
return total/length(numbers) 
end 
On the other hand, the following names would not be allowed: 
julia> function 123_invalid_name()
# this is not allowed because it starts with a digit 
end 
julia> function function() 
# this is not allowed because "function" is a built-in keyword 
end 






julia> function add(x, y) 
return x + y 
end 







julia> function saluer(name; greeting="Bonjour", 
punctuation="!") 
println("$greeting, $name$punctuation") 
end 






julia> saluer("Julia") 
This will print "Bonjour, Julia!". You can also specify the values of the keyword arguments by name: 
julia> greet("Julia", greeting="Bonsoir", punctuation="!!") 






julia> function saluer(name; greeting="Bonjour", 
punctuation="!") 
println("$greeting, $name$punctuation") 
end 
julia> saluer(“Julia”)






julia> function greet(greeting, name) 
println("$greeting, $name") 
end 
julia> greet("Hello", "Julia") 






julia> function greet(; greeting="Hello", name) 
println("$greeting, $name") 
end 
julia> greet(name="Julia", greeting="Hola") 






function greet(greeting, name) 
greet("Hello", "Julia") 
------------------- 
| greeting | name | 
------------------- 
| "Hello" | "Julia" | 
------------------- 
Keyword arguments: 
function greet(; greeting="Hello", name) 
greet(name="Julia", greeting="Hola") 
------------------- 
| greeting | name | 
------------------- 
| "Hola" | "Julia" | 
------------------- 







julia> function func!(arr) 
for i in 1:length(arr) 
arr[i] += 1 
end 
end 
# Test the function 
julia> arr = [1, 2, 3, 4] 
julia> func!(arr) 
julia> println(arr) # Output: [2, 3, 4, 5]








julia> function func!(dict) 
dict["new key"] = "new value" 
end 
# Test the function 
julia> dict = {"key1" => "value1", "key2" => "value2"} 
julia> func!(dict) 
println(dict) # Output: Dict("key1"=>"value1", "key2"=>"value2", "new key"=>"new value") 









julia> function f(x, y) 
println("default method") 
end 
julia> f(x::Int, y::Int) = println("method for integer arguments") 
julia> f(x::Float64, y::Float64) = println("method for float arguments") 







julia> @which f(1, 2) 
julia> @which f(1.0, 2.0) 







julia> function f(x) 
println("default method") 
end 
julia> f(x::Number) = println("method for numbers") 
julia> f(x::Integer) = println("method for integers") 
julia> f(x::Real) = println("method for reals") 







julia> immutable Vector{T} 
data::Array{T} 
end 






julia> v1 = Vector{Int}([1, 2, 3]) 
julia> v2 = Vector{Float64}([1.0, 2.0, 3.0]) 






julia> struct Vector{T} 
data::Array{T} 
end 






julia> v1 = Vector{Int}([1, 2, 3]) # a vector of integers 
julia> v2 = Vector{Float64}([1.0, 2.0, 3.0])  # a vector of floating-point numbers 






julia> function dot(v::Vector{T}, u::Vector{T}) where T 
# compute dot product of v and u 
end 





julia> x = 1 
1 
julia> y = "hello" 
"hello" 
julia> z = [1, 2, 3] 
[1, 2, 3] 
julia> a: Any = x 
1 
julia> b: Any = y 
"hello" 
julia> c: Any = z 
[1, 2, 3] 







julia> struct MyType 
field::Int 
end 
julia> x = MyType(1) 
MyType(1) 
julia> y: Any = x 
MyType(1)






julia> struct MySubType <: MyType 
field::Int 
extra_field::Int 
end 
julia> x = MySubType(1, 2) 
MySubType(1, 2) 
julia> y: MyType = x 
MySubType(1, 2) 
julia> z: Any = x 
MySubType(1, 2) 




julia> supertypes(Int64) 
(Signed, Integer, Real, Number, Any) 



julia> super(Int64) 
(Signed, Integer, Real, Number, Any) 



julia> Int64 <: Integer 
true 



julia> transitive_supertype(Int64) 
(Signed, Integer, Real, AbstractFloat, FloatingPoint, RealDomain, Number, Any) 





julia> function all_supertypes(T) 
supertypes = [] 
while true 
S = supertype(T) 
if S == Any 
return supertypes 
end 
push!(supertypes, S) 
T = S 
end 
end 






julia> all_supertypes(Int) 
3-element Array{Any,1}: 
Signed 
Real 
AbstractFloat






julia> subtypes(Real) 
2-element Array{Union{DataType, UnionAll},1}: 
AbstractFloat 
Integer 





julia> function all_subtypes(T) 
subtypes = [] 
for S in subtypes(T) 
push!(subtypes, S) 
push!(subtypes, all_subtypes(S)) 
end 
return subtypes 
end 






julia> all_subtypes(Real) 
4-element Array{Any,1}: 
AbstractFloat 
Float16 
Float32 
Float64 
Integer 
BigInt 







julia> subtypes(Real) 
2-element Array{Union{DataType, UnionAll},1}: 
AbstractFloat 
Integer 
julia> subtypes(AbstractFloat) 
3-element Array{Union{DataType, UnionAll},1}: 
Float16 
Float32 
Float64 








julia> subtypes(Number) 
2-element Vector{Any}: 
Complex 
Real 
julia> subtypes(Real) 
4-element Vector{Any}: 
AbstractFloat 
AbstractIrrational 
Integer 
Rational 






julia> x = Union{Int, String}(5) 
5 
julia> x = Union{Int, String}("hello") 
"hello" 






julia> function foo(x::Union{Int, String}) 
if isa(x, Int) 
println("x is an Int: ", x) 
elseif isa(x, String) 
println("x is a String: ", x) 
else
println("x is of an unexpected type") 
end 
end 
foo (generic function with 1 method) 
julia> foo(5) 
x is an Int: 5 
julia> foo("hello") 
x is a String: hello 






julia> struct Person 
name::String 
age::Int 
end




jane = Person("Jane", 30) 
println(jane.name) # prints "Jane" 
println(jane.age) # prints 30




function greet(p::Person) 
println("Hello, my name is $(p.name) and I am $(p.age) years 
old.") 
end 
greet(jane) # prints "Hello, my name is Jane and I am 30 years old." 





struct Person 
name::String 
age::Int 
end 




jane = Person("Jane", 30) 
You can then access the fields of the Person instance using dot 
notation: jane.name # Returns "Jane" 
jane.age # Returns 30 





abstract type Stack 
push!(stack::Stack, item) 
pop!(stack::Stack) 
top(stack::Stack) 
end 






struct ArrayStack <: Stack 
items::Array{Any,1} 
function push!(stack::ArrayStack, item) 
push!(stack.items, item) 
end 
function pop!(stack::ArrayStack) 
pop!(stack.items) 
end 
function top(stack::ArrayStack) 
stack.items[end] 
end 
end 






struct Point 
x::Float64 
y::Float64 
end 




p = Point(1.0, 2.0) 
println(p.x) # prints 1.0 
println(p.y) # prints 2.0 




mutable struct MutablePoint 
x::Float64 
y::Float64 
end 




mp = MutablePoint(1.0, 2.0) 
mp.x = 3.0 
println(mp.x) # prints 3.0 





function foo(x::Int, y::Int) 
return "Int, Int" 
end
function foo(x::Int, y::Float64) 
return "Int, Float64" 
end 
function foo(x::Float64, y::Int) 
return "Float64, Int" 
end 
function foo(x::Float64, y::Float64) 
return "Float64, Float64" 
end





function foo(x::Int, y::Int) 
return "Int, Int" 
end 
function foo(x::Float64, y::Float64) 
return "Float64, Float64" 
end 
function foo(x::Int, y::Float64) 
return "Int, Float64" 
end 
function foo(x::Float64, y::Int) 
return "Float64, Int" 
end 





julia> function add(x::Int, y::Int) 
return x + y 
end 
add (generic function with 1 method) 
julia> function add(x::Float64, y::Float64) 
return x + y 
end 
add (generic function with 2 methods) 
julia> add(1, 2) 
3 
julia> add(1.0, 2.0) 
3.0 





julia> module MyModule 
export myfunc 
function myfunc() 
# code for myfunc 
println(“Aloha!”) 
end 
end # defining MyModule 
Main.MyModule 







module MyModule 
export MyType, MY_CONSTANT 
struct MyType 
# fields for MyType 
W 
b 
end 
const MY_CONSTANT = 3.14 
end #defining a module 
Main.MyModule 






module MyModule 
include("foo.jl") 
include("bar.jl") 
end 





macro mymacro(x) 
quote 
y = $(esc(x)) + 1 
z = :($(y)) 
end 
end 
julia> @my_macro(2) 
3 
julia> @my_macro 2 
3 




# Define a function that takes some time to run 
function slow_function() 
sleep(1) # pause for 1 second 
end 
# Measure the time it takes to run the function 
@time slow_function()
The output of this code might look something like this: 
0.000352 seconds (5 allocations: 176 bytes) 






# Check that a variable has a certain value 
x = 10 
assert x == 10, "x should be 10" 
# Check that a function returns a certain value 
function test_function() 
return 10 
end 
assert test_function() == 10, "test_function should return 10" 
# Check that an expression evaluates to true 
assert 1 + 1 == 2, "1 + 1 should equal 2" 
# Check that a value is within a certain range 
x = 10 
assert x >= 0 && x <= 10, "x should be between 0 and 10" 





try 
# Code that might throw an error goes here 
x = y # y is not defined, so this will throw an error 
assert x == 10, "x should be 10" 
catch e 
# Code to handle the error goes here 
println("An error occurred: $(e)") 
end 




# Define a simple macro that adds 1 to a number 
macro add_one(x) 
return :($x + 1) 
end 
# Expand the macro 
expanded_code = macroexpand(:(@add_one 10)) 
# The expanded code is now an expression that can be evaluated 
eval(expanded_code) # returns 11 






# Define a simple macro that adds 1 to a number 
macro add_one(x) 
return :($x + 1) 
end
# Expand the macro 
@macroexpand @add_one 10 
# Output: quote 
# 10 + 1 
# end 



