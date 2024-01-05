## You can use the following commands to test it out on Julia command line console.


using CSV 
data = CSV.read("data.csv") 



using ExcelReaders 
data = readxl("data.xlsx", "Sheet1") 


using JSON 
data = JSON.parsefile("data.json") 



julia> r = HTTP.request("GET", "http://httpbin.org/ip")
HTTP.Messages.Response:
"""
HTTP/1.1 200 OK
Date: Wed, 23 Aug 2023 07:23:13 GMT
Content-Type: application/json
Content-Length: 32
Connection: keep-alive
Server: gunicorn/19.9.0
Access-Control-Allow-Origin: *
Access-Control-Allow-Credentials: true
{
"origin": "185.82.240.22"
}
"""
julia> println(r.status)
200
julia> println(String(r.body))
{
"origin": "1185.82.240.22"
}







using Requests 
response = get("https://example.com") 
html_source = response.text 





using Gumbo, Cascadia 
html_source = """ 
<html> 
<body> 
<a href='https://example.com'>Example 1</a> 
<a href='https://example.com'>Example 2</a> 
</body> 
</html> 
""" 
doc = parsehtml(html_source) 
selector = CSSSelector("a") 
links = selector.(doc) 
link_texts = [link.text for link in links]





using JDBC
driver = "com.mysql.jdbc.Driver" 
url = "jdbc:mysql://hostname:port/database" 
username = "username" 
password = "password" 
conn = JDBC.connect(driver, url, username, password) 






using JDBC 
# Connect to the database 
driver = "com.mysql.jdbc.Driver" 
url = "jdbc:mysql://hostname:port/database" 
username = "username" 
password = "password" 
conn = JDBC.connect(driver, url, username, password)






results = conn.execute("SELECT * FROM table") 
# Retrieve the first column of the first row 
row = results[1] 
value = row[1] 





using JDBC 
# Connect to the database 
driver = "com.mysql.jdbc.Driver" 
url = "jdbc:mysql://hostname:port/database" 
username = "username" 
password = "password" 
conn = JDBC.connect(driver, url, username, password) 
# Execute an INSERT statement 
nrows = conn.execute!("INSERT INTO table (column1, column2) VALUES (1, 'value')") 





using Distributions 
# Create a normal distribution 
normal = Normal(0, 1)
# Generate random numbers 
rand(normal, 10) 






using Random 
# Create an array of integers 
array = [1, 2, 3, 4, 5] 
# Generate random samples 
rand(array, 10) 






using Random 
rand(-1:1, 2, 3) 




using CategoricalArrays 
# Create an array of categories 
categories = ["A", "B", "C"] 
# Generate random categorical data 
rand(categories, 10) 





using DataFrames 
lines = readlines("myfile.txt") 





# Specify the types of columns 
df = CSV.read("data.csv", header=true, delim=';', 
types=[Int, Float64, String]) 





open("data.csv") do file 
 df = CSV.read(file, header=true) 
end





using DataFrames 
df = DataFrame(A = 1:3, B = ["a", "b", "c"]) 
size(df) # (3, 2) 
nrow(df) # 3 
ncol(df) # 2 
names(df) # [:A, :B] 
describe(df) 






first(df, 2) # display the first 2 rows of the DataFrame 





last(df, 1) # display the last row of the DataFrame





df[1, :] # access the first row of the DataFrame 
df[:, "A"] # access the column with name "A" of the DataFrame 
df[1, "A"] # access the element in the first row and first column of the DataFrame 






filter(row -> row.A > 1, df) # filter rows where A > 1 
select(df, :A) # select column A 





using Statistics 
combine(groupby(df, :B), :A => mean)# group by column B and calculate the mean of  column A for each group 




using DataFrames 
df = DataFrame(a = 1:3, b = 4:6) 
names(df)




using DataFrames 
df = DataFrame(a = 1:3, b = 4:6) 
show(df) 
# Output:
# a b 
# 1 4 
# 2 5 
# 3 6 





using CSV 
CSV.write("filename.csv", df) 





using CSV 
CSV.write("filename.csv", df, delim='\t') 





using CSV 
CSV.write("filename.csv", df, header = false) 




using CSV 
CSV.write("filename.csv", df[1:3,:]) 




using TextAnalysis 
# Tokenize a string into words 
text = "This is a sample text." 
tokens = tokenize(text)
# Remove stop words from the tokens 
stopwords = ["is", "a", "the"] 
filtered_tokens = filter(t -> !(t in stopwords), tokens) 
Output:
3-element Vector{String}:
 "this"
 "sample"
 "text"






using Plots 
plot(df.column1) 





using Plots 
scatter(df.column1, df.column2)





using Plots 
histogram(df.column1)




using Plots 
bar(df.column1) 





a = "Hello"
b = " World" 
c = a * b # "Hello World" 
d = a ^ 3 # "HelloHelloHello" 


a = "Hello" 
a[1] # 'H' 


a = "Hello" 
a[1:3] # "el"



name = "Julia" 
"Hello, $name" # "Hello, Julia" 


a = "Hello " 
b = a^3 # "Hello Hello Hello " 


a = "Hello World" 
findfirst(“W”, a) #7:7 
findlast(“o”, a) #8:8 


string1 = "Hello" 
string2 = "world"
result = string1 * " " * string2 
println(result) 
"Hello world" 


string = "Hello world" 
new_string = replace(string, "world" => "Julia") 
println(new_string) 
"Hello Julia" 


string = "Hello world" 
substring = string[7:11] 
println(substring) 
"world" 


string = "Hello World" 
uppercase_string = uppercase(string) 
lowercase_string = lowercase(string) 
println(uppercase_string) 
println(lowercase_string) 
"HELLO WORLD" "hello world"


string = "Hello world" 
len = length(string) 
println(len) 
11 


string = "Hello world, Hello universe"
count = count("Hello", string) 
println(count) 


file = open("path/to/file.txt") 
file_contents = read(file, String) 
close(file) 
println(file_contents) 


file_contents = readlines("path/to/file.txt") 
for line in file_contents 
 println(line) 
end


bytes: file = open("path/to/large_file.txt") 
bytes_to_read = 4096 
while !eof(file) 
 buffer = read(file, bytes_to_read) 
 println(buffer) 
end 
close(file)



file = open("path/to/large_file.txt") 
bytes_to_read = 4096 
while !eof(file) 
 buffer = readbytes!(file, bytes_to_read) 
 println(String(buffer)) 
end 
close(file) 



julia> s = "a,b,c,d,e" 
"a,b,c,d,e" 
julia> split(s, ",") 
5-element Array{SubString{String},1}: 
"a" 
"b" 
"c" 
"d" 
"e" 



julia> s = "Hello, World!" 
"Hello, World!"
julia> split(r"[^\w]", s) 
3-element Array{SubString{String},1}: 
"Hello" 
"World" 
“” 



julia> s = "a,b,c,d,e" 
"a,b,c,d,e" 
julia> split(s, ",", limit = 2) 
2-element Array{SubString{String},1}: 
"a" 
"b,c,d,e" 
julia> s = "a, b , c , d, e" 
"a, b , c , d, e" 
julia> map(strip, split(s, ",")) 
5-element Array{String,1}: 
"a" 
"b" 
"c" 
"d" 
"e" 



julia> r = r"\d+" 
r"\d+" 
julia> re = Regex("\\d+")
r"\d+" 



julia> match(r"\d+", "123abc") 
RegexMatch("123") 
julia> match(r"\d+", "abc") 
# Define a regular expression to match any string that starts with "Julia" regex = r"^Julia" 
# Check if the regular expression matches a string 
match(regex, "Julia is a great programming language") # returns true match(regex, "Python is also a great programming language") # returns false 





# Define a regular expression to match any word that starts with "J" regex = r"\bJ\w+" 
# Find all matches 
for match in eachmatch(regex, "Julia is a great programming language")  println(match.match) 
end 




julia> findall(r"\d+", "abc 123 def 456") 
2-element Array{SubString{String},1}: 
"123" 
"456"




using DataFrames 
df = DataFrame(A = [1, missing, 2, 3], B = [4, 5, missing, 7]) 
df_without_na = dropmissing(df) 




using Impute 
df = DataFrame(A = [1, missing, 2, 3.0], B = [4, 5, missing, 7.0]) 
df_imputed = impute(df, Interpolate()) 



using Missings 
A = [1, missings, 2, 3]
fin = skipmissing(A) 



using Statistics 
A = [1, missing, 2, 3] 
mean(skipmissing(A)) 



using Interpolations 
set = 1:6 
sety = [i == 3 ? missing : i for i in set] 
xf = [xi for (xi,a) in zip(set, sety) if !ismissing(a)] 
Af = [a for a in sety if !ismissing(a)] 
itp = interpolate((xf, ), Af, Gridded(Linear())) 




A = [1, missing, 2, 3] 
B = coalesce.(A, 0) 



using Dates, DataFrames 
# Create a time series data frame 
dates = [Date(2022,1,1), Date(2022,1,2), Date(2022,1,3), missing] 
values = [1, 2, 3, missing] 
df = DataFrame(date=dates, value=values) 
# Handle missing values in the date column 
df.date = coalesce.(df.date, Date(1900,1,1)) 
# Handle missing values in the value column 
df.value = coalesce.(df.value, 0) 



using TimeZones, TimeSeries, DataFrames 
# Define a time zone 
tz = TimeZone("America/New_York") 
# Create a time series 
timestamps = [DateTime(2022,1,1,0,0,0), 
 DateTime(2022,1,2,0,0,0), 
 DateTime(2022,1,3,0,0,0)] 
values = [1, 2, 3] 
ts = TimeArray(timestamps, values) 
# Convert the time series to a data frame 
df = DataFrame(timestamp=timestamps, value=values) 




using MLJ 
using RDatasets 
# Load the Boston Housing dataset 
boston = dataset("MASS", "Boston") 
# Split the data into training and test sets 
train, test = partition(eachindex(boston), 0.7, shuffle=true, rng=42) # Define the model 
model = @load LinearRegressor pkg=MLJLinearModels 
# Fit the model to the training data 
MLJ.fit!(model, rows(boston, train)) 
# Make predictions on the test set 
ŷ = MLJ.predict(model, rows(boston, test)) 
# Evaluate the model 
    r² = r²(ŷ, boston.medv[test])
println("R²: $(r²)")





