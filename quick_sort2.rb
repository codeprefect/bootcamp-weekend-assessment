def quicksort(ar, v1=nil, v2=nil)
  lo = v1; hi = v2
  #p = ar.last
  #left = ar.select{|x| x < p}
  #center = ar.select{|x| x == p}
  #right = ar.select{|x| x > p}
  #newar = left + center + right
  lo ||= 0; hi ||= ar.length - 1
  if lo < hi
    p = partition(ar, lo, hi)
    quicksort(ar, lo, p-1)
    quicksort(ar, p+1, hi)
  end
  if ar.length == v2
    puts ar.join(" ")
  end
  return ar
end

def partition(ar, lo, hi)
  pivot = ar[hi]
  i = lo; j = lo
  while j < hi
    if ar[j] <= pivot
      val1 = ar[i]
      ar[i] = ar[j]
      ar[j] = val1
      i += 1
    end
    j += 1
  end
  val2 = ar[i]
  ar[i] = ar[hi]
  ar[hi] = val2
  return i
end

cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map {|i| i.to_i};
quicksort(ar, 0, cnt - 1);