## You can use the following commands to test it out on Julia command line console.






julia> t = @task begin
   	sleep(5)
   	println("done")
   end


julia> schedule(t)




julia> schedule(t)
Task (runnable) @0x000000010e3fb850

julia> wait(t)
done



julia> @async begin
    sleep(5)
    println("done")
end
Task (runnable) @0x000000010e3a2ef0

julia> done




julia> chnl = Channel{Int}(32)
Channel{Int64}(32) (empty)



julia> put!(chnl, 42)
42



julia> val = take!(chnl)
42




julia> function producer(c::Channel)
              	put!(c, "start")
              	for n=1:4
                  	put!(c, 2n)
              	end
              	put!(c, "stop")
          	end;
julia> chnl = Channel(producer);
julia> take!(chnl)
"start"
julia> take!(chnl)
2
julia> take!(chnl)
4
julia> take!(chnl)
6
julia> take!(chnl)
8
julia> take!(chnl)
"stop"



julia> for x in Channel(producer)
		println(x)
end
start
2
4
6
8
stop








julia --threads 4

julia> Threads.nthreads()
4

julia> Threads.threadid()
1






julia> lock(lk) do
    use(a)
end






julia> begin
lock(lk)
try
    use(a)
finally
    unlock(lk)
end
end








julia> function sum_single(a)
           	s = 0
           	for i in a
               	s += i
           	end
           	s
   	end
sum_single (generic function with 1 method)











julia> function sum_multi_bad(a)
           	s = 0
           	Threads.@threads for i in a
               	s += i
           	end
           	s
   	end
sum_multi_bad (generic function with 1 method)











julia> function sum_multi_good(a)
           	chunks = Iterators.partition(a, length(a) ÷ Threads.nthreads())
           	tasks = map(chunks) do chunk
               	Threads.@spawn sum_single(chunk)
           	end
           	chunk_sums = fetch.(tasks)
           	return sum_single(chunk_sums)
   	end
sum_multi_good (generic function with 1 method)













julia> i = Threads.Atomic{Int}(0)
Atomic{Int64}(0)








julia> old_is = zeros(Int, 4)
4-element Vector{Int64}:
 0
 0
 0
 0
julia> Threads.@threads for id in 1:4
       	old_is[id] = Threads.atomic_add!(i, id)
   	end












julia> acc = Atomic{Int}(0)
       Atomic{Int64}(0)
       
julia> @threads for i in 1:1000
           atomic_add!(acc, 1)
       end
julia> acc
       Atomic{Int64}(1000)

       









struct AtomicData
        @atomic field1::Int
        @atomic field2::Float64
end
    
data = AtomicData(0, 0.0)
# Writing to atomic fields with specific atomic orderings
@atomic data.field1 = 42 :sequentially_consistent
@atomic data.field2 = 3.14 :release
    
# Reading from atomic fields with specific atomic orderings (optional)
value1 = @atomic data.field1 :acquire
value2 = @atomic data.field2
    

