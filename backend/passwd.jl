#!/usr/bin/julia

using Random

function passwd(name :: String, site :: String, seed :: Int64, n :: Int64)
    Random.seed!(seed)
    nums = map((x)->Int64(x), collect(name))
    seed = atan(Int64(sum(nums)) * 131);
    for i=1:n
        res = 213*rand()*sin(seed * (Int64(name[(i % length(name)) + 1]) / 13 + Int64(site[(i % length(site)) + 1]) / 31))
        seed *= 3*sin(res/5)+5
        nextch = Int64(round(abs(res))) % 26 + 'a'
	print(rand() < 0.5 ? nextch : nextch - 32)
    end

end


passwd(ARGS[1], ARGS[2], parse(Int64, ARGS[3]), parse(Int64, ARGS[4]))
println()
