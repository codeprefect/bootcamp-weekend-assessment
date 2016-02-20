def quicksort(ar, v1=nil, v2=nil)
  lo = v1; hi = v2
  lo ||= 0; hi ||= ar.length - 1
  if ar.length > 1
	pivot = ar[hi]
	left = 0
	right = ar.length - 1
	while left <= right
	  while ar[left] < pivot
	    left += 1
      end
	  while ar[right] > pivot
        right -= 1
	  end
	  if left <= right
	    val1 = ar[left]
	    ar[left] = ar[right]
        ar[right] = val1
        left +=1
        right -= 1
	  end
	end
	#quicksort(ar, 0, right)
	#quicksort(ar, left, ar.length-1)
  end
  puts ar.join(" ")
end

cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map {|i| i.to_i};
quicksort(ar, 0, cnt - 1);