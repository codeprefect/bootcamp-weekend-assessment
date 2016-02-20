def  quickSort( ar)
  if ar.length < 2
    #puts ar.join(" ")
    return ar
  else
    p = ar[0]
    left = ar.select{|x| x < p}
    center = ar.select{|x| x == p}
    right = ar.select{|x| x > p}
    left = quickSort(left)
    right = quickSort(right)
    newar = left + center + right
    puts newar.join(" ")
    return newar
  end
end

cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map {|i| i.to_i};
quickSort(ar);