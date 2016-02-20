def countsort(ar)
  i = 0
  collect = Hash.new(0)
  counter = 0
  while counter < 100
  	collect[counter] = 0
  	counter += 1
  end
  count = 0
  ar.each {|val|
  	collect.has_key?(val) ? collect[val] += 1 : collect[val] = 1
  }
  collect.each{|x, y| print "#{y} "}
end

cnt = gets.to_i
ar = STDIN.gets.chomp.split(" ").map {|i| i.to_i}
countsort(ar)