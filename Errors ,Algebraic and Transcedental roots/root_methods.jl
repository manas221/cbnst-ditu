### A Pluto.jl notebook ###
# v0.16.1

using Markdown
using InteractiveUtils

# ╔═╡ 916d8960-2ddd-11ec-39ca-319664fbd4cd
md"""
## Methods to calculate roots of transcedental equation
"""

# ╔═╡ d5be58bd-6718-47c7-983c-02a8120f5aca
f(x) = 3*(x^2) - 20*x - 1

# ╔═╡ 905cfa0d-17dc-419b-a306-1d08ee44af13
g(x) = 3*((x+10)^2) - 20*(x+10) - 1

# ╔═╡ 736b4f96-c119-45a4-99ff-7a432dca9fbb
function continuous_sum(f::Function ,xs)
	#xs is a tuple of values 
	sum = 0
	for x in xs
		sum = sum + f(x)
	end
	return sum
end

# ╔═╡ 4ce39f35-5d40-4cf1-beab-ec7442f1ef1b
function find_interval(f::Function)
	i = 0
	while f(i)*f(i+1) >= 0
		i = i+1
	end
	return (i ,i+1)
end

# ╔═╡ 79a6ed6f-1fd0-4f44-a470-cbc77470c68f
find_interval(f)

# ╔═╡ 8d9d9937-86c4-4436-8f87-1f738663184c
interval = (1 ,3)

# ╔═╡ 3ba0c071-2fbd-4cc4-9c0a-667ad43a038f
function change_interval(interval)
	interval[1] = 12
	return interval
end

# ╔═╡ 268adeff-b967-4413-b977-724410c6db29
function bisection_method(f::Function ,interval ,iterations)
	val_left = interval[1]
	val_right = interval[2]
	val_mid = (val_left + val_right)/2
	for i in iterations
		if 
	return val_mid
end

# ╔═╡ 1f47ab5b-5926-4c2d-9fe9-c256c7f55234
bisection_method(f ,find_interval(f) ,3)

# ╔═╡ Cell order:
# ╟─916d8960-2ddd-11ec-39ca-319664fbd4cd
# ╠═d5be58bd-6718-47c7-983c-02a8120f5aca
# ╠═905cfa0d-17dc-419b-a306-1d08ee44af13
# ╠═736b4f96-c119-45a4-99ff-7a432dca9fbb
# ╠═4ce39f35-5d40-4cf1-beab-ec7442f1ef1b
# ╠═79a6ed6f-1fd0-4f44-a470-cbc77470c68f
# ╠═8d9d9937-86c4-4436-8f87-1f738663184c
# ╠═3ba0c071-2fbd-4cc4-9c0a-667ad43a038f
# ╠═268adeff-b967-4413-b977-724410c6db29
# ╠═1f47ab5b-5926-4c2d-9fe9-c256c7f55234
