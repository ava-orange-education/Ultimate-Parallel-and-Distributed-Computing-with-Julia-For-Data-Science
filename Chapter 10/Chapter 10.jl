## You can use the following commands to test it out on Julia command line console.






julia> # Create an empty plot object
   	p = plot()
Warning: Ignoring XDG_SESSION_TYPE=wayland on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.
julia> # Add a scatter plot to the existing plot object
   	x = rand(10)
10-element Vector{Float64}:
julia> y = rand(10)
10-element Vector{Float64}:
julia> plot!(p, x, y, seriestype=:scatter)
julia> # Add a line plot to the existing plot object
   	z = sin.(x)
10-element Vector{Float64}:
julia> plot!(p, x, z, seriestype=:line)
julia> # Show the plot
   	display(p)




julia> plot(rand(10, 5)) #Plot 5 series with x-axis values 1:10





julia> using Plots
julia> # Plot a scatter plot with custom color and marker
julia> x = rand(10)
julia> y = rand(10)
julia> plot(x, y, color=:red, marker=:circle)




julia> # Plot a line plot with custom labels and legend
julia> z = sin.(x)
julia> plot(x, z, label="sin(x)", xlabel="x", ylabel="y")




julia> savefig("myplot.png")
"/home/dnabanita7/myplot.png"
julia> png("myplot")
"myplot.png"
julia> savefig(p, "myplot.pdf")





julia> x = range(0, 10, length=100)
julia> y1 = sin.(x)
julia> y2 = cos.(x)
julia> plot(x, [y1 y2], title="Trigonometric functions", label=["sin(x)" "cos(x)"], linewidth=3)




julia> xlabel!("x")
julia> plot!(legend=:outerbottom, legendcolumns=2)



(@v1.9) pkg> add LaTeXStrings
julia> using LaTeXStrings
julia> x = 10 .^ range(0, 4, length=100)
julia> y = @. 1/(1+x)
julia> plot(x, y, label=L"\frac{1}{1+x}")
julia> plot!(xscale=:log10, yscale=:log10, minorgrid=true)
julia> title!(L"Log-log plot of $\frac{1}{1+x}$")
julia> xlims!(1e+0, 1e+4)
julia> ylims!(1e-5, 1e+0)
julia> xlabel!(L"x")
julia> ylabel!(L"y")





julia> using Plots
# Define a range of values for the x-axis
julia> x = range(0, 10, length=100)
# Define a sine function for the y-axis
julia> y = sin.(x)
# Add some noise to the sine function to create a "noisy" dataset
julia> y_noisy = @. sin(x) + 0.1*randn()
# Create a basic line plot of the sine function
julia> plot(x, y, label="sin(x)")
# Change the plot type to a scatter plot and add the noisy dataset
julia> scatter!(x, y_noisy, label="data")
# Customize the plot with different colors, marker sizes, and a legend
julia> plot!(
	legend=:bottomleft, # Position the legend in the bottom-left corner
	title="Sine with noise", # Add a title to the plot
	xlabel="x", # Label the x-axis
	ylabel="y", # Label the y-axis
	lc=:black, lw=2, # Customize the line color and width of the sine function
	mc=:red, ms=2, ma=0.5, # Customize the marker color, size, and transparency of the noisy data
)






julia> using Plots
# Set the backend to Plotly
julia> plotlyjs()
Plots.PlotlyJSBackend()
# Create a plot using Plotly
julia> x = range(0, 10, length=100)
julia> y = sin.(x)
julia> y_noisy = @. sin(x) + 0.1*randn()
julia> plot(x, y, label="sin(x)", lc=:black, lw=2)
[ Info: Listening on: 127.0.0.1:9171, thread id: 1




julia> scatter!(x, y_noisy, label="data", mc=:red, ms=2, ma=0.5)



julia> plot!(legend=:bottomleft)
julia> title!("Sine with noise, plotted with Plotly")
julia> xlabel!("x")
julia> ylabel!("y")
# Save the plot to a PNG file
julia> savefig("plotlyjs_tutorial.png")
"/home/dnabanita7/plotlyjs_tutorial.png"





# Set the backend back to GR
julia> gr()
Plots.GRBackend()
# Create a plot using GR
julia> plot(x, y, label="sin(x)", lc=:black, lw=2)
julia> scatter!(x, y_noisy, label="data", mc=:red, ms=2, ma=0.5)
julia> plot!(legend=:bottomleft)
julia> title!("Sine with noise, plotted with GR")
julia> xlabel!("x")
julia> ylabel!("y")






julia> x = range(0, 10, length=100)
julia> y1 = @. exp(-0.1x) * cos(4x)
julia> y2 = @. exp(-0.3x) * cos(4x)
julia> y3 = @. exp(-0.5x) * cos(4x)
julia> plot(x, [y1 y2 y3], layout=(3, 1), legend=false)





julia> x = range(0, 10, length=100)
julia> y1 = @. exp(-0.1x) * cos(4x)
julia> y2 = @. exp(-0.3x) * cos(4x)
julia> y3 = @. exp(-0.1x)
julia> y4 = @. exp(-0.3x)
julia> y = [y1 y2 y3 y4]
julia> p1 = plot(x, y)
julia> p2 = plot(x, y, title="Title 2", lw=3)
julia> p3 = scatter(x, y, ms=2, ma=0.5, xlabel="xlabel 3")
julia> p4 = scatter(x, y, title="Title 4", ms=2, ma=0.2)
julia> plot(p1, p2, p3, p4, layout=(2,2), legend=false)






(@v1.9) pkg> add StatsPlots
julia> using StatsPlots, DataFrames
julia> df = DataFrame(a=1:10, b=10*rand(10), c=10*rand(10))
10×3 DataFrame
 Row │ a  	b    	c   	 
 	│ Int64  Float64  Float64  
─────┼──────────────────────────
   1 │ 	1  2.17912  9.95485
   2 │ 	2  5.54207  3.7425
   3 │ 	3  5.97152  1.39592
   4 │ 	4  1.92392  0.581316
   5 │ 	5  9.95078  2.85454
   6 │ 	6  1.19948  3.57068
   7 │ 	7  1.46569  0.900923
   8 │ 	8  8.10511  9.94493
   9 │ 	9  9.38279  5.05676
  10 │	10  9.7275   8.22645
julia> @df df plot(:a, [:b :c])







(@v1.9) pkg> add Distributions
julia> using Distributions, StatsPlots
julia> plot(Normal(3, 5), lw=3)





julia> using RDatasets, StatsPlots
julia> iris = dataset("datasets", "iris")
julia> @df iris marginalhist(:PetalLength, :PetalWidth)







julia> using StatsPlots
julia> y = rand(100, 4)
julia> violin(["Series 1" "Series 2" "Series 3" "Series 4"], y, legend=false)
julia> boxplot!(["Series 1" "Series 2" "Series 3" "Series 4"], y, legend=false)








julia> using Plots
julia> # Define a function to plot
julia> f(x, y) = x^2 + y^2
julia> # Generate x and y coordinates for the plot
julia> x = -5:0.1:5
julia> y = -5:0.1:5
julia> # Evaluate the function at each (x, y) point
julia> z = [f(xi, yj) for xi in x, yj in y]
julia> # Create the contour plot
julia> contour(x, y, z, levels=10)







julia> # Create the contour plot with customizations
julia> contour(x, y, z, levels=10, labels=true, color=:viridis)





julia> # Create a filled contour plot
julia> contourf(x, y, z, levels=10, color=:plasma)




using Plots
# Define a function to plot
julia> f(x, y) = sin(x) * cos(y)
# Generate x and y coordinates for the plot
julia> x = range(-5, stop=5, length=100)
julia> y = range(-5, stop=5, length=100)
# Evaluate the function at each (x, y) point
julia> z = [f(xi, yj) for xi in x, yj in y]
# Create the contour plot
julia> contour(x, y, z, levels=10, clabels=true)







julia> using Plots
julia> # Define a function to plot
julia> f(x, y) = sin(x) * cos(y)
julia> # Generate x and y coordinates for the plot
julia> x = range(-5, stop=5, length=100)
julia> y = range(-5, stop=5, length=100)
julia> # Evaluate the function at each (x, y) point
julia> z = [f(xi, yj) for xi in x, yj in y]
julia> # Create the contour plot with custom levels
julia> contour(x, y, z, levels=[-0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8], clabels=true)









julia> using Plots
julia> # Generate some random data
julia> data = randn(1000)
julia> # Create the histogram
julia> histogram(data)





julia> # Create the histogram with 10 bins
julia> histogram(data, nbins=10)




julia> # Create the histogram with customizations
julia> histogram(data, nbins=10, color=:yellow, title="Random Data Histogram")




julia> # Generate two random datasets
julia> data1 = randn(1000)
julia> data2 = randn(1000) .+ 2
julia> # Create a stacked histogram
julia> histogram(data1, data2, nbins=20, normalize=true, color="gray", title="Stacked Histogram")






julia> using Plots
# Generate some random data with weights
julia> data = [(randn(), rand()) for i=1:1000]
# Create a weighted histogram with 10 bins
julia> histogram(data, bins=10, weights=[d[2] for d in data])






julia> using Plots
julia> # Generate some random data with weights
julia> data = [(randn(), rand()) for i=1:1000]
julia> # Create a weighted histogram with 20 bins and a red color
julia> histogram(data, bins=20, weights=[d[2] for d in data], color=:red)
julia> # Add a title and labels to the plot
julia> title!("Weighted Histogram of Random Data")
julia> xlabel!("Values")
julia> ylabel!("Weighted Frequency")






julia> using Plots
julia> # Generate some random data for two groups
julia> data1 = randn(1000)
julia> data2 = randn(1000) .+ 2
julia> # Create a stacked histogram with 10 bins for each group
julia> histogram([data1, data2], bins=10, label=["Group 1" "Group 2"], alpha=0.6)







julia> using Plots
julia> # Generate some random data for two groups
julia> data1 = randn(1000)
julia> data2 = randn(1000) .+ 2
julia> # Create an overlaid histogram with 10 bins for each group
julia> histogram([data1, data2], bins=10, label=["Group 1" "Group 2"], alpha=0.6,
      	normalize=true, xlim=(-4, 8), ylim=(0, 0.6), color=[:blue :red])







julia> using Plots
julia> # Generate some random data
julia> data = randn(1000)
julia> # Create a cumulative histogram with 20 bins
julia> histogram(data, bins=20, norm=:cdf, fillalpha=0.3, line=:step, label="CDF")








julia> using Plots
julia> # Generate some random 2D data
julia> data = randn(1000, 2)
julia> # Create a 2D histogram with 20 bins in each direction
julia> histogram2d(data[:,1], data[:,2], nbins=20, color=:heat)








julia> using Plots
julia> # Generate some random 2D data
julia> data = randn(1000, 2)
julia> # Create weights proportional to the x-coordinate
julia> weights = data[:,1]
julia> # Create a weighted 2D histogram with 20 bins in each direction
julia> histogram2d(data[:,1], data[:,2], weights=weights, nbins=20, color=:heat)







