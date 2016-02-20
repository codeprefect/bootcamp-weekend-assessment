def  partition( ar)
  p = ar[0]
  left = ar.select{|x| x < p}
  center = ar.select{|x| x == p}
  right = ar.select{|x| x > p}
  newar = left + center + right
  puts newar.join(" ")
  return newar
end

cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map{|x|x.to_i};
partition(ar);
