

# > day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1,4]  # $15 - $3 == $12

def day_trader (array)
	ref = []
	min = 0
	for n in 0..(array.length-1) do
		if array[n..-1].max - array[n] > min
			ref.clear
			ref += [n,array.index(array[n..-1].max)]
			min = array[n..-1].max - array[n]
		end
	end
	puts ref
end


day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
