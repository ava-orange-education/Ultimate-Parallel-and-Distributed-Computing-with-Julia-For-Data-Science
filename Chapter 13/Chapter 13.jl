## You can use the following commands to test it out on Julia command line console.




@model function coinflip(; N::Int)
    # Our prior belief about the probability of heads in a coin toss.
    p ~ Beta(1, 1)
    # Heads or tails of a coin are drawn from `N` independent and identically
    # distributed Bernoulli distributions with success rate `p`.
    y ~ filldist(Bernoulli(p), N)
    return y
end;



using Turing
using Distributions
using StatsPlots



julia> n = 100
100
julia> x = rand(n)
100-element Vector{Float64}:
 0.1454876506720857
 ⋮
0.871731039104576
julia> intercept_true = 2.0
2.0
julia> slope_true = 3.0
3.0
julia> noise_std = 0.5
0.5
julia> y = intercept_true .+ slope_true .* x + rand(Normal(0, noise_std), n)
100-element Vector{Float64}:
 2.985222764640527
 ⋮
 4.1866572131062565





julia> @model function linear_regression(x, y)
    n = length(x)
    intercept ~ Normal(0, 10)
    slope ~ Normal(0, 10)
    noise_std ~ Truncated(Normal(0, 10), 0, Inf)
    for i in 1:n
            y[i] ~ Normal(intercept + slope * x[i], noise_std)
    end
end
linear_regression (generic function with 2 methods)













julia> using Turing, MCMCChains, Random
julia> # Generate synthetic data
   	Random.seed!(123)
TaskLocalRNG()
julia> n = 100  # number of data points
100
julia> x = randn(n)
100-element Vector{Float64}:
  0.8082879284649668
 -1.1220725081141734
  ⋮
  0.14837536667608195
julia> y = rand(Float64, n) .< 1 ./ (1 .+ exp.(-3 * x))  # logistic regression model
100-element BitVector:
 1
 0
 ⋮
 0
julia> # Define the Bayesian logistic regression model
   	@model function logistic_regression(x, y)
       		# Priors
       		β ~ Normal(0, 5)
       		α ~ Normal(0, 5)
       		# Linear predictor
       		η = α .+ β * x

       		# Likelihood
       		for i in 1:length(x)
           			y[i] ~ Bernoulli(1 / (1 + exp(-η[i])))
       		end
   	end
logistic_regression (generic function with 2 methods)











julia> # Summarize the results
   	describe(chain)
2-element Vector{ChainDataFrame}:
 Summary Statistics (2 x 8)
 Quantiles (2 x 6)
julia> # Extract the parameter samples
   	β_samples = chain[:β]
2-dimensional AxisArray{Float64,2,...} with axes:
	:iter, 501:1:1500
	:chain, 1:1
And data, a 1000×1 Matrix{Float64}:
 2.2379346024854163
 ⋮
3.2173969793645107
julia> α_samples = chain[:α]
2-dimensional AxisArray{Float64,2,...} with axes:
	:iter, 501:1:1500
	:chain, 1:1
And data, a 1000×1 Matrix{Float64}:
 -0.3670272203555585
  ⋮
 -0.0674713027768106















 using Turing
 using Distributions
 using Plots
 using LinearAlgebra
 
 # Generate some synthetic data
 function generate_data(N)
     x = range(0, stop=2π, length=N)
     y = sin.(x)
     return x, y
 end
 
 # Define the GPLVM model
 @model function gplvm_model(x, y, Q)
     N = length(x)
     D = 1
 
     # Priors
     μ = zeros(N, Q)
     Σ = Diagonal(ones(N))
     Λ = Diagonal(ones(Q))
     σ² = 1.0
 
     # Latent variables
     z = Vector{Vector{Real}}(undef, N)
     for i = 1:N
         z[i] ~ MvNormal(μ[i, :], Σ[i, i])
     end
 
     Ψ = Λ * Λ' + Diagonal(ones(Q) * 1e-6)
 
     # Observed variables
     for i = 1:N
         f_i = Ψ * z[i]
         for j = 1:D
             y[i, j] ~ Normal(f_i[j], σ²)
         end
     end
 end
 
 # Set the number of latent dimensions
 Q = 2
 
 # Generate synthetic data
 x, y = generate_data(100)
 
 # Set the number of samples and iterations for inference
 num_samples = 1000
 num_iterations = 10
 
 # Run the inference using Hamiltonian Monte Carlo
 chain = sample(gplvm_model(x, y, Q), HMC(num_iterations, 0.01), num_samples)
 
 # Extract the posterior samples
 posterior_samples = get(chain, :z)

 








