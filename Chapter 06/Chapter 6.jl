## You can use the following commands to test it out on Julia command line console.



using StatsBase 
# Define the data set 
data = [1, 2, 3, 4, 5] 
weights = [1, 2, 3, 4, 5]
# Calculate the weighted sum and mean 
wsum = sum(data .* weights) 
wmean = mean(data, Weights(weights)) 
println("The weighted sum of the data is: ", wsum) 
The weighted sum of the data is: 35 
println("The weighted mean of the data is: ", wmean) 
The weighted mean of the data is: 3.5 





using StatsBase 
data = [1, 2, 3, 4, 5] 
mean_value = mean(data) 
println("The mean of the dataset is: ", mean_value) 
The mean of the dataset is: 3.0 






using StatsBase 
data = [1, 2, 3, 4, 5] 
median_value = median(data) 
println("The median of the dataset is: ", median_value) 
The median of the dataset is: 3.0 





using StatsBase 
data = [1, 2, 3, 4, 5, 5] 
mode_value = mode(data) 
# Calculate the modes 
modes_values = modes(data) 
println("The mode of the dataset is: ", mode_value) 
The mode of the dataset is: 5 
println("The modes of the data are: ", modes_values) 
The modes of the data are: [5]







using StatsBase 
data = [1, 2, 3, 4, 5] 
range_value = range(data) 
println("The range of the dataset is: ", range_value) 
The range of the dataset is: (1, 5) 





using StatsBase 
data = [1, 2, 3, 4, 5] 
variance_value = var(data) 
println("The variance of the dataset is: ", variance_value) 
The variance of the dataset is: 2.5 






using StatsBase 
# Define the data set 
data = [1, 2, 3, 4, 5] 
# Calculate the standard deviation of the data 
stddev = std(data) 
println("The standard deviation of the data is: ", stddev) 
The standard deviation of the data is: 1.5811388300841898 






# Define two sets of observations 
x = [1, 2, 3, 4, 5] 
y = [1, 4, 9, 16, 25] 
# Compute the covariance between x and y 
c = cov(x, y) 
println(c) 
# Output: 
# 15 






# Define a matrix of observations 
X = [1 2 3; 4 5 6; 7 8 9] 
# Compute the Pearson correlation matrix of X 
c = cor(X) 
println(c) 
# Output: 
# 3x3 Matrix{Float64}: 
# 1.0 1.0 1.0 
# 1.0 1.0 1.0 
# 1.0 1.0 1.0 







julia> using StatsBase
julia> p = [0.1, 0.2, 0.3, 0.4]; 
julia> entropy(p) 
1.2798542258336676 
julia> entropy(p, 2) # entropy(p) / log2(2) 
1.8464393446710157 
julia> entropy([0.0, 0.5, 0.5]) 
0.6931471805599453 
julia> entropy([1.0, 0.0, 0.0]) 
0.0 







using StatsBase 
# Define the data set 
julia> data = [1, 2, 3, 4, 5] 
# Calculate the quartiles of the data 
julia> q1, q3 = quantile(data, [0.25, 0.75]) 
julia> println("The first quartile (Q1) of the data is: ", q1) 
The first quartile (Q1) of the data is: 2.0 
julia> println("The third quartile (Q3) of the data is: ", q3) 
The third quartile (Q3) of the data is: 4.0 







using StatsBase 
# Define the data set 
julia> data = [1, 2, 3, 4, 5] 
# Calculate the summary statistics 
julia> summary_stats = describe(data) 
Summary Stats: 
Length: 5 
Missing Count: 0 
Mean: 3.000000 
Minimum: 1.000000 
1st Quartile: 2.000000
Median: 3.000000 
3rd Quartile: 4.000000 
Maximum: 5.000000 
Type: Int64 








using StatsBase 
# Define the data set 
julia> data = [1, 2, 3, 4, 5, 10]
6-element Vector{Int64}:
  1
  2
  3
  4
  5
 10 
# Calculate the z-scores of the data set 
julia> zscores = zscore(data) 
julia> println("The z-scores of the data set are: ", zscores) 
The z-scores of the data set are: [-0.993145909629702, -0.6795208855361119, 
- 0.36589586144252184, -0.052270837348931766, 0.26135418674465827, 1.8294793072126085] 






using StatsBase 
# Define the data set 
julia> data = [1, 2, 3, 4, 5, 10] 
# Calculate the IQR of the data set 
julia> iqr_value = iqr(data) 
julia> println("The IQR of the data set is: ", iqr_value) 
The IQR of the data set is: 2.5 







julia> using StatsBase 
# Define two arrays 
julia> array1 = [1, 2, 3] 
julia> array2 = [2, 3, 4] 
# Calculate the L1 distance between the two arrays 
julia> L1_distance = L1dist(array1, array2) 
julia> println("The L1 distance between the two arrays is: ", L1_distance) 
The L1 distance between the two arrays is: 3.0 







julia> using StatsBase 
julia> # Define two arrays 
 array1 = [1, 2, 3] 
3-element Vector{Int64}: 
julia> array2 = [2, 3, 4] 
3-element Vector{Int64}: 
julia> # Calculate the L2 distance between the two arrays 
 julia> L2_distance = L2dist(array1, array2) 
1.7320508075688772 
julia> println("The L2 distance between the two arrays is: ", L2_distance) 
The L2 distance between the two arrays is: 1.7320508075688772








# Define two arrays 
julia> array1 = [1, 2, 3] 
julia> array2 = [2, 3, 4] 
# Calculate the square of the L2 distance between the two arrays 
sq_L2_distance = sqL2dist(array1, array2) 
julia> println("The square of the L2 distance between the two arrays is: ", sq_L2_distance) 
The square of the L2 distance between the two arrays is: 2.0 







# Define two arrays 
julia> array1 = [1, 2, 3] 
julia> array2 = [2, 3, 4] 
# Calculate the L-infinity distance between the two arrays 
julia> L_inf_distance = Linfdist(array1, array2) 
julia> println("The L-infinity distance between the two arrays is: ", L_inf_distance) 
The L-infinity distance between the two arrays is: 1.0 








# Define the data set 
julia> x = [1, 2, 3, 4, 5, 10] 
julia> y = [4, 7, 2, 5, 9, 3] 
# Calculate the mean squared deviation of the data set 
julia> mean_squared_deviation = msd(x, y) 
julia> println("The mean squared deviation of the data set is: ", mean_squared_deviation) 
The mean squared deviation of the data set is: 16.833333333333332 








# Define the data set 
julia> x = [1, 2, 3, 4, 5, 10] 
julia> y = [4, 7, 2, 5, 9, 3] 
# Calculate the root mean squared deviation of the data set 
julia> root_mean_squared_deviation = rmsd(x, y)
julia> println("The root mean squared deviation of the data set is: ",root_mean_squared_deviation) 
The root mean squared deviation of the data set is: 4.102844541697057 









# Define the data set 
julia> x = [1, 2, 3, 4, 5, 10] 
julia> y = [4, 7, 2, 5, 9, 3] 
# Calculate the mean deviation of the data set 
julia> mean_deviation = meanad(x, y) 
julia> println("The mean deviation of the data set is: ", mean_deviation) 
The mean deviation of the data set is: 3.5 








# Define the data set 
julia> x = [1, 2, 3, 4, 5, 10] 
julia> y = [4, 7, 2, 5, 9, 3] 
# Calculate the max deviation of the data set 
julia> max_deviation = maxad(x, y) 
julia> println("The mean deviation of the data set is: ", max_deviation) 
The max deviation of the data set is: 7








# Define the data set 
julia> p = [0.1, 0.2, 0.3, 0.4, 0.5, 1.0] 
julia> q = [0.4, 0.7, 0.2, 0.5, 0.9, 0.3] 
# Calculate the root mean squared deviation of the data set 
julia> kullback_leibler_deviation = gkldiv(p, q) 
julia> println("The kullback-leibler deviation of the data set is: ",  
kullback_leibler_deviation) 
The kullback-leibler deviation of the data set is: 1.0532795539705795








# Define the data set 
julia> x = [1, 2, 3, 4, 5, 10] 
julia> y = [4, 7, 3, 5, 9, 3] 
# Count the number of elements equal to 3 in the data set 
julia> count = counteq(x, y) 
julia> println("The number of elements equal to 3 in the data set is: ", count) 
The number of elements equal to 3 in the data set is: 1 








# Define the data set 
julia> x = [1, 2, 3, 4, 5, 10] 
julia> y = [4, 7, 3, 5, 9, 3] 
# Count the number of elements not equal to 3 in the data set 
julia> count = countne(x, y) 
julia> println("The number of elements not equal to 3 in the data set is: ", count) 
The number of elements not equal to 3 in the data set is: 5 








julia> x = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4] 
julia> counts(x) # returns [1, 2, 3, 4] 
4-element Vector{Int64}: 
1 
2 
3 
4 
julia> w = [1, 1, 2, 2, 2, 1, 2, 1, 1, 2] 
julia> counts(x, w) #addcounts!(zeros(eltype(w), length(levels)), x, levels, w) 4×2 Matrix{Int64}: 
1 0 
1 1 
1 2 
2 2 









julia> x = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4] 
julia> proportions(x, 3) # returns [0.1, 0.2, 0.3] 
3-element Vector{Float64}: 
0.1 
0.2 
0.30000000000000004











julia> r = [0,0,0,0,0]; 
julia> x = [1,2,3,2,1]; 
julia> levels = 1:5; #levels = [1,2,3,4,5] 
julia> addcounts!(r, x, levels) 
5-element Vector{Int64}: 
2 
2 
1 
0 
0 
julia> dict = Dict{Int64,Int64}(); 
julia> x = [1,2,3,2,1]; 
julia> addcounts!(dict, x) 
Dict{Int64, Int64} with 3 entries: 
 2 => 2 
 3 => 1 
 1 => 2 










julia> x = [1,2,3,2,1];
julia> countmap(x) 
Dict{Int64, Int64} with 3 entries: 
 2 => 2 
 3 => 1 
 1 => 2 








julia> x = [1,2,3,2,1]; 
julia> proportionmap(x) 
Dict{Int64, Float64} with 3 entries: 
 2 => 0.4 
 3 => 0.2 
 1 => 0.4 







julia> a = [1, 2, 3, 4, 5]; 
julia> StatsBase.sample(a) 
5 
julia> StatsBase.sample(a, 2) 
2-element Vector{Int64}: 
5 
4 
julia> x = zeros(Int64, 2);
julia> StatsBase.sample!(a, x) 
2-element Vector{Int64}: 
5 
1 








julia> X = [1 2; 3 4] 
2×2 Matrix{Int64}: 
1 2
3 4 
julia> println("Generalized Variance: ", genvar(X)) 
Generalized Variance: 0.0 
julia> println("Total Variance: ", totalvar(X)) 
Total Variance: 4.0 









julia> x = [1, 2, 3, 4] 
4-element Vector{Int64}: 
1 
2 
3 
4 
julia> y = [2, 4, 6, 8] 
4-element Vector{Int64}: 
2 
4
6 
8 
julia> Z = [3, 6, 9, 12] 
4-element Vector{Int64}: 
 3 
 6 
 9 
12 
julia> println("Partial Correlation: ", partialcor(x, y, Z)) 
Partial Correlation: NaN 










julia> # Example data 
 x = [1,2,3,4,5] 
5-element Vector{Int64}: 
1 
2 
3 
4 
5 
julia> # Compute autocovariance  
lags = [0,1,2] 
3-element Vector{Int64}: 
0 
1 
2 
julia> acov = autocov(x, lags) 
3-element Vector{Float64}: 
 2.0 
 0.8 
-0.2 
julia> # Compute autocorrelation  
acor = autocor(x, lags) 
3-element Vector{Float64}: 
 1.0 
 0.4 
-0.1 
julia> # Compute autocovariance in-place  
r = zeros(length(lags)) 
3-element Vector{Float64}: 
0.0 
0.0 
0.0 
julia> autocov!(r, x, lags) 
3-element Vector{Float64}: 
 2.0 
 0.8 
-0.2 
julia> # Compute autocorrelation in-place  
acor_inplace = zeros(length(lags)) 3-element Vector{Float64}: 
0.0 
0.0 
0.0

julia> autocor!(acor_inplace, x, lags) 
3-element Vector{Float64}: 
 1.0 
 0.4 
-0.1 









julia> using StatsBase 
julia> x = [1, 2, 3, 4, 5] 
5-element Vector{Int64}: 
1 
2 
3 
4
5 
julia> y = [2, 3, 4, 5, 6] 
5-element Vector{Int64}: 
2 
3 
4 
5 
6 
julia> lags = [-2, -1, 0, 1, 2] 
5-element Vector{Int64}: 
-2 
-1 
 0 
 1 
 2 
julia> # Compute cross covariance 
 ccf = StatsBase.crosscov(x, y, lags) 
5-element Vector{Float64}: 
-0.2 
 0.8 
 2.0 
 0.8 
-0.2 
julia> # Compute cross correlation 
 cc = StatsBase.crosscor(x, y, lags) 
5-element Vector{Float64}: 
-0.1 
 0.4 
 1.0 
 0.4 
-0.1 
julia> # Compute cross covariance and store result in pre-allocated vector  
r = similar(lags) 
5-element Vector{Int64}: 
140643155552448 
140643370844656 
140643370850096 
140643370849904 
 0 

julia> x = [1, 2, 3, 4, 5] 
5-element Vector{Int64}: 
1 
2
3 
4 
5 
julia> y = [5, 4, 3, 2, 1] 
5-element Vector{Int64}: 
5 
4 
3 
2 
1 
julia> lags = [-2, -1, 0, 1, 2] 
5-element Vector{Int64}: 
-2 
-1 
 0 
 1 
 2 
julia> crosscor(x, y, lags) 
5-element Vector{Float64}: 
 0.1 
-0.4 
-1.0 
-0.4 
 0.1 











julia> rle([1,1,1,2,2,3,3,3,3,2,2,2]) 
([1, 2, 3, 2], [3, 2, 4, 3])







julia> vals = [1, 2, 3, 2] 
4-element Vector{Int64}: 
1 
2 
3 
2 
julia> lens = [3, 2, 4, 3] 
4-element Vector{Int64}: 
3 
2 
4 
3 
julia> inverse_rle(vals, lens) 
12-element Vector{Int64}: 








julia> levelsmap([1, 2, 2, 3, 3, 3, 4]) 
Dict{Int64, Int64} with 4 entries: 
 4 => 4
 2 => 2 
 3 => 3 
 1 => 1 









julia> indexmap([1, 2, 2, 3, 3, 3, 4]) 
Dict{Int64, Int64} with 4 entries: 
 4 => 7 
 2 => 2 
 3 => 4 
 1 => 1









julia> indicatormat([1, 2, 2], 2) 
2×3 Matrix{Bool}: 
1 0 0 
0 1 1 







julia> v = [1, 2, 3, 4, 5]
5-element Vector{Int64}: 
1 
2 
3 
4 
5 
julia> midpoints(v) 
4-element Vector{Float64}: 
1.5 
2.5 
3.5 
4.5 







julia> x = [1 3 7 
 2 5 6 
 3 8 4 
 4 6 2]; 
julia> pairwise(cor, eachcol(x)) 
3×3 Matrix{Float64}: 
 1.0 0.744208 -0.989778 
 0.744208 1.0 -0.68605
-0.989778 -0.68605 1.0 
julia> y = [1 3 missing 
 2 5 6 
 3 missing 2 
 4 6 2]; 
julia> pairwise(cor, eachcol(y), skipmissing=:pairwise) 
3×3 Matrix{Float64}: 
 1.0 0.928571 -0.866025 
 0.928571 1.0 -1.0 
-0.866025 -1.0 1.0 
julia> dest = zeros(3, 3); 
julia> pairwise!(cor, dest, eachcol(x)); 
julia> dest 
3×3 Matrix{Float64}: 
 1.0 0.744208 -0.989778 
 0.744208 1.0 -0.68605 
-0.989778 -0.68605 1.0 
julia> pairwise!(cor, dest, eachcol(y), skipmissing=:pairwise); 
julia> dest 
3×3 Matrix{Float64}: 
 1.0 0.928571 -0.866025 
 0.928571 1.0 -1.0 
-0.866025 -1.0 1.0









julia> using StatsBase 
julia> # Univariate 
 h = fit(Histogram, rand(100)) 
Histogram{Int64, 1, Tuple{StepRangeLen{Float64, Base.TwicePrecision{Float64},  Base.TwicePrecision{Float64}, Int64}}} 
edges: 
 0.0:0.2:1.0 
weights: [18, 15, 25, 21, 21] 
closed: left 
isdensity: false 
julia> h = fit(Histogram, rand(100), 0:0.1:1.0) 
Histogram{Int64, 1, Tuple{StepRangeLen{Float64, Base.TwicePrecision{Float64},  Base.TwicePrecision{Float64}, Int64}}} 
edges: 
 0.0:0.1:1.0 
weights: [8, 8, 11, 4, 8, 14, 13, 18, 8, 8] 
closed: left
isdensity: false 
julia> h = fit(Histogram, rand(100), nbins=10) 
Histogram{Int64, 1, Tuple{StepRangeLen{Float64, Base.TwicePrecision{Float64},  Base.TwicePrecision{Float64}, Int64}}} 
edges: 
 0.0:0.1:1.0 
weights: [9, 7, 11, 8, 9, 12, 13, 7, 11, 13] 
closed: left 
isdensity: false 
julia> h = fit(Histogram, rand(100), weights(rand(100)), 0:0.1:1.0) 
Histogram{Float64, 1, Tuple{StepRangeLen{Float64, Base.TwicePrecision{Float64},  Base.TwicePrecision{Float64}, Int64}}} 
edges: 
 0.0:0.1:1.0 
weights: [9.03362694785457, 6.5630746683585155, 6.708583302844759,  1.8780191525470449, 5.176468819705679, 4.690381340041942, 2.4322472127857426,  7.8143366878106555, 3.857428925388602, 8.321820464999115] 
closed: left 
isdensity: false 
julia> h = fit(Histogram, [20], 0:20:100) 
Histogram{Int64, 1, Tuple{StepRange{Int64, Int64}}} 
edges: 
 0:20:100 
weights: [0, 1, 0, 0, 0]
closed: left 
isdensity: false 
julia> h = fit(Histogram, [20], 0:20:100, closed=:right) 
Histogram{Int64, 1, Tuple{StepRange{Int64, Int64}}} 
edges: 
 0:20:100 
weights: [1, 0, 0, 0, 0] 
closed: right 
isdensity: false 
julia> # Multivariate 
 h = fit(Histogram, (rand(100),rand(100))) 
Histogram{Int64, 2, Tuple{StepRangeLen{Float64, Base.TwicePrecision{Float64},  Base.TwicePrecision{Float64}, Int64}, StepRangeLen{Float64,  Base.TwicePrecision{Float64}, Base.TwicePrecision{Float64}, Int64}}} 
edges: 
 0.0:0.2:1.0 
 0.0:0.2:1.0 
weights: [4 6 … 4 3; 1 3 … 3 4; … ; 4 3 … 6 5; 6 4 … 3 4] 
closed: left 
isdensity: false 
julia> h = fit(Histogram, (rand(100),rand(100)),nbins=10) 
Histogram{Int64, 2, Tuple{StepRangeLen{Float64, Base.TwicePrecision{Float64},  Base.TwicePrecision{Float64}, Int64}, StepRangeLen{Float64,  Base.TwicePrecision{Float64}, Base.TwicePrecision{Float64}, Int64}}}
edges: 
 0.0:0.1:1.0 
 0.0:0.1:1.0 
weights: [0 2 … 2 0; 1 0 … 0 0; … ; 2 0 … 0 1; 2 0 … 0 0] 
closed: left 
isdensity: false



