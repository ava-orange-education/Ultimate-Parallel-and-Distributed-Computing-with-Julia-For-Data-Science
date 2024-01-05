## You can use the following commands to test it out on Julia command line console.





struct MyModel <: MLJ.Deterministic
  lambda::Float64
end
my_model = MyModel(lambda=0.5)





function MyModel.clean!(model::MyModel)
  if model.lambda < 0
    warning = "Need lambda ≥ 0. Resetting lambda=0."
    model.lambda = 0
  end
end






@mlj_model mutable struct MyModel <: MLJ.Deterministic
  lambda::Float64 = 0.5
end





struct MyModel <: MLJ.Deterministic
  lambda::Float64
end
function MyModel.clean!(model::MyModel)
  if model.lambda < 0
    warning = "Need lambda ≥ 0. Resetting lambda=0."
    model.lambda = 0
  end
end







julia> import MLJBase
julia> using LinearAlgebra
julia> mutable struct MyRegressor <: MLJBase.Deterministic
    lambda::Float64
end
MyRegressor(; lambda=0.1) = MyRegressor(lambda)
# fit returns coefficients minimizing a penalized rms loss function:
julia> function MLJBase.fit(model::MyRegressor, verbosity, X, y)
    x = MLJBase.matrix(X)                     # convert table to matrix
    fitresult = (x'x + model.lambda*I)\(x'y)  # the coefficients
    cache=nothing
    report=nothing
    return fitresult, cache, report
end
# predict uses coefficients to make a new prediction:
julia> MLJBase.predict(::MyRegressor, fitresult, Xnew) = MLJBase.matrix(Xnew) * fitresult










julia> X, y = @load_boston;
julia> model = MyRegressor(lambda=1.0)
julia> regressor = machine(model, X, y)
julia> evaluate!(regressor, resampling=CV(), measure=rms, verbosity=0)









julia> using MLJBase
julia> using Distributions
julia> struct MyClassifier <: MLJBase.Probabilistic
           end
julia> function MLJBase.fit(model::MyClassifier, verbosity, X, y)
		fitresult = Distributions.fit(MLJBase.UnivariateFinite, y)
		cache = nothing
		report = nothing
		return fitresult, cache, report
	end
julia> MLJBase.predict(model::MyClassifier, fitresult, Xnew) = [fitresult for i in 1:nrows(Xnew)]
julia> X, y = @load_iris
julia> mach = fit!(machine(MyClassifier(), X, y))
julia> predict(mach, selectrows(X, 1:2))




