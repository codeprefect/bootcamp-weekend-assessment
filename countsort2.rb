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
  starter = []
  collect.each{|x, y|
    if x == 0
      starter[x] = y
    else
      starter[x] = y + starter[x-1]
    end
    print "#{starter[x]} "
  }
end

cnt = gets.to_i
ar = []
count = 0
cnt.times do
  ar[count] = STDIN.gets.chomp.split(" ").map{|i| i.to_i}[0]
  count += 1
end

countsort(ar)