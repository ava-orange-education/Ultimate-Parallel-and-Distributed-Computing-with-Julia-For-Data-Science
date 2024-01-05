## You can use the following commands to test it out on Julia command line console.

julia> 7 # integer value 
7 
julia> 7.4 # floating point value 
7.4 
julia> false # boolean value 
false 
julia> Inf # infinity 
Inf 
julia> "Hello World!" # string value 
"Hello World!" 
julia> [4.3, 5, 0] # single dimensional array 
3-element Vector{Float64}: 
4.3 
5.0 
0.0 
julia> [4.3, "Hello", 0, 7] # single dimensional array 
4-element Vector{Any}: 
4.3 
 "Hello" 
0 
7 





julia> [1;; 2;; 3;; 4] # 2 dimensional matrix 
1×4 Matrix{Int64}: 
1 2 3 4 
julia> [[1, 2] [3, 4]] # 2 dimensional matrix
2×2 Matrix{Int64}: 
1 3 
2 4 





julia> typeof(Inf) # finding the data type of Infinity defined in Julia 
Float64 





julia> reshape([1, 2, 3, 4], (2, 2)) # resizing a matrix to a defined size 
2×2 Matrix{Int64}: 
1 3 
2 4 





julia> arr = [1, 2, 3, 4] 
4-element Vector{Int64}: 
1 
2 
3 
4 
julia> arr + arr # addition operation on two arrays 
4-element Vector{Int64}: 
2 
4 
6 
8 
julia> arr - arr # subtraction operation on two arrays 
4-element Vector{Int64}: 
0 
0 
0 
0 
julia> arr * reshape(arr, (1, length(arr))) # multiplication operation 4×4 Matrix{Int64}: 
1 2 3 4 
2 4 6 8 
3 6 9 12
4 8 12 16 
julia> arr / arr # division operation 
4×4 Matrix{Float64}: 
0.0333333 0.0666667 0.1 0.133333 
0.0666667 0.133333 0.2 0.266667 
0.1 0.2 0.3 0.4 
0.133333 0.266667 0.4 0.533333 






julia> Float32.([4.3, 5, 0]) # type-casting of an array to floating point 3-element Vector{Float32}: 
4.3 
5.0 
0.0






julia> func(x) = 7x^2/(4+5x^3) # defining a function in Julia 
func (generic function with 1 method) 
julia> x = [2π/n for n=1:3] 
3-element Vector{Float64}: 
6.283185307179586 
3.141592653589793 
2.0943951023931953 
julia> y = func.(x) 
3-element Vector{Float64}: 
0.22210061177582122 
0.43442513879920297 
0.6149053316945388 
In the example, func.(x) shows that it is applied across all elements of the 3-element Vector.  Dot notation can be used with binary operators, functions, data types and so on. julia> x = [2, 4, 5] 
3-element Vector{Int64}: 
2
4 
5 
julia> y = 5x.^3 + 6x.^5 
3-element Vector{Int64}: 
 232 
 6464 
19375 
julia> y = sin.(x) # using sine operation over all values in array 3-element Vector{Float64}: 
 0.9092974268256817 
-0.7568024953079282 
-0.9589242746631385 






julia> example = rand(5, 7) # defining an array with random floating values 5×7 Matrix{Float64}: 
0.84574 0.394717 0.317663 0.0265575 0.154856 0.180189 0.865816 0.251014 0.256149 0.557439 0.814052 0.607115 0.173 0.265682 
0.265331 0.439098 0.786905 0.310021 0.441693 0.407871 0.145327 0.269942 0.992338 0.044133 0.493182 0.424494 0.869254 0.319185 0.300924 0.117598 0.250328 0.863686 0.351836 0.163491 0.617714 
julia> example1 = rand(Int64, 5, 7)#Random Integer values in array 5×7 Matrix{Int64}: 
-7854820187046981395 671422092392350264 … -8797921353975463297  1190311527666160570 -2999535863210223006 1196246067491248664  4090788726465192959 -5805998217061788037 -6607041929927670283 -3603700130076647610 4972624035219583797 907458187756625011 
-6979151765419648327 8824871015523778106 -1654918304789514935 








julia> length(example) # finding total elements in the array 
35 
julia> size(example) # finding the size/no. of dimensions of the array (5, 7) 
julia> typeof(example) # finding data types of values in the array Matrix{Float64} (alias for Array{Float64, 2}) 
julia> zeros(5, 4) #creating an array with defined size filled only with 0
5×4 Matrix{Float64}: 
0.0 0.0 0.0 0.0 
0.0 0.0 0.0 0.0 
0.0 0.0 0.0 0.0 
0.0 0.0 0.0 0.0 
0.0 0.0 0.0 0.0 
julia> ones(4) #creating an array with defined size filled only with 1 4-element Vector{Float64}: 
1.0 
1.0 
1.0 
1.0 
julia> randn(5, 2) # defining an array with random floating values 5×2 Matrix{Float64}: 
-0.221947 -0.462047 
 1.00376 0.775232 
-0.870823 -1.34012 
-0.0373757 -1.26907 
-0.155329 1.46971 








julia> n = 1 
1 
julia> a = 7 
7 
julia> t = false 
false 
julia> yt = [2, 4, 56.7] 
3-element Vector{Float64}: 
 2.0 
 4.0 
56.7 







julia> a+1 
8 
julia> a+1 
8 
julia> a+1+1 
9 
julia> ~t 
true 
julia> t 
false 








julia> udhr = "在尊严和权利上一律平等" 
"在尊严和权利上一律平等" 
julia> 하세요 = "Yellow" 
"Yellow" 
julia> σ = 0.003 
0.003 








length = 3 
3 
julia> string = 5 
5 
julia> sqrt = 3 
3 
julia> string(4) 
ERROR: MethodError: objects of type Int64 are not callable 
Maybe you forgot to use an operator such as *, ^, %, / etc. ? 
Stacktrace: 
[1] top-level scope 
 @ REPL[17]:1 
julia> string(4.6) 
ERROR: MethodError: objects of type Int64 are not callable 
Maybe you forgot to use an operator such as *, ^, %, / etc. ? 
Stacktrace: 
[1] top-level scope 
 @ REPL[18]:1 
julia> null = 9 
9 
julia> Inf = 8 
8 
julia> pi = 3 
3
julia> pi 
3 
julia> sqrt(100) 
ERROR: MethodError: objects of type Int64 are not callable 
Maybe you forgot to use an operator such as *, ^, %, / etc. ? 
Stacktrace: 
[1] top-level scope 
 @ REPL[23]:1 














 julia> else = false 
ERROR: syntax: unexpected "else" 
Stacktrace: 
[1] top-level scope 
 @ none:1 
julia> if = true 
ERROR: syntax: unexpected "=" 
Stacktrace: 
[1] top-level scope 
 @ none:1 
julia> catch = "HEllo" 
ERROR: syntax: unexpected "catch" 
Stacktrace: 
[1] top-level scope
 @ none:1 
julia> for = 75.4 
ERROR: syntax: unexpected "=" 
Stacktrace: 
[1] top-level scope 
 @ none:1 







 julia> a = 4 
 4 
 julia> b = a 
 4 
 julia> n = copy(a) 
 4 
 julia> a = 6 
 6 
 julia> b 
 4 
 julia> n 
 4

 





 julia> r = [3.4, 5] 
 2-element Vector{Float64}: 
 3.4 
 5.0 
 julia> t = r 
 2-element Vector{Float64}: 
 3.4 
 5.0 
 julia> r[1] = 3 
 3 
 julia> t[1] 
 3.0 
 julia> s = copy(r) 
 2-element Vector{Float64}: 
 3.0 
 5.0 
 julia> r[2] = 7 
 7 
 julia> s[2] 
 5.0 

 




 julia> g = 7 
7 
julia> typeof(g) 
Int64 
julia> h = 45.6 
45.6 
julia> typeof(h) 
Float64 








julia> milk = 0 
0 
julia> eggs = 1 
1 
julia> bacon = 1 
1 
julia> bread = 1 
1 
julia> if milk == 1 
 if cereal == 1 
 print("Here, have your breakfast!") 
 end 
 elseif eggs == 1 
 if bacon == 1 
 print("Here, have your breakfast!") 
 end 
 elseif bread == 1
 print("Here, have your breakfast!") 
 else 
 print("We are out of options!") 
 end 










 julia> 0.1 + 0.2 ≈ 0.3 
 true 
 julia> 0.1 + 0.2 ≈ 0.3 && false 
 false 
 julia> 0.1 + 0.2 == 0.3 && true 
 false

 





 julia> true || print("Hello") 
true 
julia> false || print("Hello") 
Hello 
julia> true && print("Hello") 
Hello 
julia> false && print("Hello") 
false 










julia> if !(true) 
 print("Hello") 
 end 
&& statement can be interpreted as a conditional statement. 
julia> if (true) 
 print("Hello") 
 end 
Hello 
We can interpret the ternary operations as an if-else-end statement in Julia. julia> true ? print("Hi") : print("Hello") 
Hi 
julia> false ? print("Hi") : print("Hello") 
Hello 
Tip: Remember to add spaces before and after the operators other than ! operator. You can use the print() or println() function. 
The above code can be interpreted as the following: 
julia> if true 
 print("Hi") 
 else 
 print("Hello") 
 end 
Hi 
julia> if false 
 print("Hi") 
 else 
 print("Hello") 
 end 
Hello 







julia> try 
 log(-54) 
 catch e 
 print("Can't be negative") 
 end 
Can't be negative 
julia> x = try 
 log(-54) 
 catch e 
 print("Can't be negative") 
 finally 
 print("\n This will always be logged") 
 end 
Can't be negative 
This will always be logged 







julia> p = try 
    log(-54)
    catch e 
    throw(e) 
    finally 
    println("This will always be logged") 
    end 
   This will always be logged 
   ERROR: DomainError with -54.0: 
   log will only return a complex result if called with a complex argument. Try  log(Complex(x)). 
   Stacktrace: 
   [1] top-level scope 
    @ REPL[38]:4 
   caused by: DomainError with -54.0: 
   log will only return a complex result if called with a complex argument. Try  log(Complex(x)). 

    





    julia> for x in range(1, 1, 3) 
    print("Help\n") 
    end 
   Help 
   Help 
   Help

   





   julia> x = 1 
   julia> while x < 4
    print("Help\n") 
    x += 1 
    end 
   Help 
   Help 
   Help 

   




   result = (if x > y begin x - y end else begin y - x end); 
   x * result 

   




   function add(x, y) 
    return x + y 
    end 

    





function add(x, y = 0) 
    return x + y
    end 
        
   
