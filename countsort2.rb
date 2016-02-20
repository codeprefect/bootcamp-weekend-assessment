def countsort(ar)
  i = 0
  content = ar.length
  while i < content
    ar[i] = ar[0]
  end
  collect = Hash.new
  counter = 0
  while counter < 100
    collect[counter] = 0
    counter += 1
  end
  starter = 0
  count = 0
  ar.each {|val|
    collect.has_key?(val) ? collect[
      val] += 1 : collect[val] = 1
  }

  collect.each{|x, y|
    if x == 0
      print "#{y} "
    else
      print "#{collect[x-1]+y} "
    end
    }
end

cnt = gets.to_i
ar = []
cnt.times do
  ar == STDIN.gets.chomp.split(" ").map {|i| i.to_i}
end
countsort(ar)