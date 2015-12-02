def bubble_sort(array)
	sorted = false
	until sorted
		sorted = true
		array.each_with_index do |element, i|
			if i != (array.length - 1) && element > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				sorted = false
			end
		end
	end
	array
end

def bubble_sort_by(array)
	sorted = false
	until sorted
		sorted = true
		array.each_with_index do |element, i|
			if i!= (array.length - 1) && yield(array[i], array[i + 1]) > 0
				array[i], array[i + 1] = array[i + 1], array[i]
				sorted = false
			end
		end
	end
	p array
end

p bubble_sort([4,3,78,2,0,2])
bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end