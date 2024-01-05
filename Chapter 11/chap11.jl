## You can use the following commands to test it out on Julia command line console.


julia> using MLJ, DataFrames
julia> X, y = make_blobs(100, 3; centers=2, cluster_std=[1.0, 3.0])
(Tables.MatrixTable{Matrix{Float64}} with 100 rows, 3 columns, and schema:
 :x1  Float64
 :x2  Float64
 :x3  Float64, CategoricalValue{Int64, UInt32}[1, 1, 2, 1, 1, 2, 2, 2, 1, 1  …  2, 2, 1, 2, 2, 1, 1, 1, 2, 1])
julia> dfBlobs = DataFrame(X)
100×3 DataFrame
 Row │ x1     	x2     	x3  	 
 	│ Float64	Float64	Float64  
─────┼────────────────────────────────
   1 │  -1.99141   8.24332   -4.65529
   2 │  -4.04924   7.55333   -2.42757
 	 ⋮
julia> dfBlobs.y = y
100-element CategoricalArray{Int64,1,UInt32}:
 1
 ⋮
 1
julia> first(dfBlobs, 3)
3×4 DataFrame
 Row │ x1    	x2   	x3    	y    
 	│ Float64   Float64  Float64   Cat…
─────┼───────────────────────────────────
   1 │ -1.99141  8.24332  -4.65529  1
   2 │ -4.04924  7.55333  -2.42757  1
   3 │ -9.00246  3.44369   6.91574  2






   julia> using MLJ, DataFrames
   julia> X, y = make_regression(100, 5; noise=0.5, sparse=0.2, outliers=0.1)
   (Tables.MatrixTable{Matrix{Float64}} with 100 rows, 5 columns, and schema:
    :x1  Float64
    :x2  Float64
    :x3  Float64
    :x4  Float64
    :x5  Float64, [-0.854598521465274,  … 2.287388237748642])
   julia> dfRegression = DataFrame(X)
   100×5 DataFrame
    Row │ x1      	x2      	x3      	x4      	x5     	 
        │ Float64 	Float64 	Float64 	Float64 	Float64	 
   ─────┼─────────────────────────────────────────────────────────────
      1 │ -0.736704   -0.171908	0.0129722   0.400937	0.892407
           ⋮
    100 │ -0.660374	0.374358	0.253689   -2.3867 	-1.94786
                                                       54 rows omitted
   julia> dfRegression.y = y
   100-element Vector{Float64}:
    -0.854598521465274
     ⋮
     2.287388237748642
   julia> first(dfRegression, 3)
   3×6 DataFrame
    Row │ x1     	x2     	x3      	x4     	x5     	y    	 
        │ Float64	Float64	Float64 	Float64	Float64	Float64   
   ─────┼───────────────────────────────────────────────────────────────────
      1 │ -0.736704  -0.171908   0.0129722   0.400937  0.892407   -0.854599
      2 │ -0.463261   0.63076   -0.971391   -1.34927   0.252629	0.11885
      3 │ -1.50237   -1.33892	0.403449   -1.01186   0.0327883  -7.82129











julia> using MLJBase
julia> # split multiple objects "synchronously"
             (Xtrain, Xtest), (ytrain, ytest) = partition((X, y), 0.8, rng=123, multi=true)
      (((x1 = [6.546574333729479,  … , 6.402576222222763])), (CategoricalArrays.CategoricalValue{Int64, UInt32}[3, 1,  … , 3], CategoricalArrays.CategoricalValue{Int64, UInt32}[1, …, 2]))







julia> all_models = models()  # List all available models
208-element Vector{NamedTuple{(:name, … , :output_scitype)}}:
(name = ABODDetector, package_name = OutlierDetectionNeighbors, ... )
⋮
(name = XGBoostRegressor, package_name = XGBoost, ... )
julia> loaded_models = localmodels()   # List only the models for which code is already loaded
15-element Vector{NamedTuple{(:name, … , :output_scitype)}}:
(name = ConstantClassifier, package_name = MLJModels, ... )
⋮
(name = UnivariateTimeTypeToContinuous, package_name = MLJModels, ... )








models() do model
	matching(model, X, y) &&
	model.prediction_type == :probabilistic
end








ms = localmodels()
model = ms[1]
load_path(model)








julia> _, y = @load_iris
((sepal_length = [5.1,  … , 5.9], sepal_width = [3.5,  …, 3.0], petal_length = [1.4,  … , 5.1], petal_width = [0.2,  …  1.8]), CategoricalArrays.CategoricalValue{String, UInt32}["setosa",  … "virginica"])
julia> ŷ = shuffle(y)
150-element CategoricalArrays.CategoricalArray{String,1,UInt32}:
 "setosa"
 ⋮
 "virginica"
julia> w = Dict("versicolor" => 1, "setosa" => 2, "virginica"=> 3)
Dict{String, Int64} with 3 entries:
  "virginica"  => 3
  "versicolor" => 1
  "setosa" 	=> 2
julia> macro_f1score(ŷ, y, w)
0.66








julia> measures() do m
    m.supports_weights
 end
34-element Vector{NamedTuple{(:name, :instances, :human_name, :target_scitype, :supports_weights, :supports_class_weights, :prediction_type, :orientation, :reports_each_observation, :aggregation, :is_feature_dependent, :docstring, :distribution_type)}}:
(name = BrierLoss, instances = [brier_loss], ...)
⋮
(name = QuantileLoss, instances = [quantile_loss], ...)









using MLJ

struct MyTransformer <: Static{Tuple{}}
end

function MLJ.transform(::MyTransformer, X::DataFrame)
	# do some transformation on X here
	return transformed_X
end




