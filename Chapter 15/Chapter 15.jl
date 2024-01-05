## You can use the following commands to test it out on Julia command line console.





$ julia -p 2
julia> r = remotecall(rand, 2, 2, 2)
Future(2, 1, 4, ReentrantLock(nothing, 0x00000000, 0x00, Base.GenericCondition{Base.Threads.SpinLock}(Base.IntrusiveLinkedList{Task}(nothing, nothing), Base.Threads.SpinLock(0)), (8, 0, 141733920768)), nothing)

julia> s = @spawnat 2 1 .+ fetch(r)
Future(2, 1, 5, ReentrantLock(nothing, 0x00000000, 0x00, Base.GenericCondition{Base.Threads.SpinLock}(Base.IntrusiveLinkedList{Task}(nothing, nothing), Base.Threads.SpinLock(0)), (8, 4572472576, 4883600368)), nothing)
julia> fetch(s)
2×2 Array{Float64,2}:
 1.18526  1.50912
 1.16296  1.60607






 julia> A = rand(1000, 1000);
 julia> Bref = @spawnat :any A^2;
 julia> fetch(Bref);
 1000×1000 Matrix{Float64}:
 …

 


 julia> Bref = @spawnat :any rand(1000, 1000)^2;
 julia> fetch(Bref);
 1000×1000 Matrix{Float64}:
 …

 




 julia> A = rand(10, 10)
 10×10 Matrix{Float64}:
  0.253969   0.00485857  0.871175  0.692261	0.375655	0.914166  0.488375   0.871096   0.406925   0.68845
 …
  0.704127   0.682123	0.185796  0.492256	0.629498	0.526364  0.447056   0.0307264  0.829556   0.42526
 
 julia> remotecall_fetch(()->sum(A), 2)
 52.61104291838339

 








 julia> A = rand(10, 10)
 10×10 Matrix{Float64}:
  0.414612   0.708716   0.451456  0.0138283  0.714173   0.825522  0.647969  0.615009   0.0255661  0.857037
 …
 
 julia> remotecall_fetch(()->A, 2)
 10×10 Matrix{Float64}:
  0.414612   0.708716   0.451456  0.0138283  0.714173   0.825522  0.647969  0.615009   0.0255661  0.857037
 …
 julia> B = rand(10, 10)
 10×10 Matrix{Float64}:
  0.181936   0.866609  0.352039   0.975791   0.847819   0.640851  0.51947   0.206783   0.366583  0.819961
 …
 julia> let B = B
     remotecall_fetch(()->B, 2)
 End
 10×10 Matrix{Float64}:
  0.181936   0.866609  0.352039   0.975791   0.847819   0.640851  0.51947   0.206783   0.366583  0.819961
 …
 julia> @fetchfrom 2 InteractiveUtils.varinfo()
   name         	size summary
   ––––––––––– ––––––––– –––––––––––––––––––––
   A       	840 bytes 10×10 Matrix{Float64}
   Base              	Module
   Core              	Module
   Distributed 1.151 MiB Module
   Main              	Module
   r       	216 bytes Future










   julia> using Distributed
   julia> addprocs(3)
   julia> @everywhere using SharedArrays
   
   julia> S = SharedArray{Int,2}((3,4), init = S -> S[localindices(S)] = repeat([myid()], length(localindices(S))))
   3×4 SharedMatrix{Int64}:
    2  3  5  6
    2  4  5  6
    3  4  6  6
   julia> S[3,2] = 7
   julia> S
   3×4 SharedMatrix{Int64}:
    2  3  5  6
    2  4  5  6
    3  7  6  6

    











    function advection_shared!(q, u)
        @sync begin
            for p in procs(q)
                @async remotecall_wait(advection_shared_chunk!, p, q, u)
            end
        end
        q
    end
    