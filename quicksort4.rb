def quicksort(ar)
  return ar if ar.length <= 1
  pivot = ar[0]
  less, greatereq = ar[1..-1].partition{|x| x<pivot}
  newar = quicksort(less)+[pivot]+quicksort(greatereq)
  puts newar.join(" ")
  return newar
end

cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map {|i| i.to_i};
quicksort(ar);