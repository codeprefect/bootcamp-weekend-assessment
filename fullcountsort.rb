def countsort(ar, cnt)
  i = 0
  #collect = Hash.new(0)
  counter = 0
  count = 0
  string_hash = Hash.new
  counter = 0
  while counter < cnt
    temp = ar[counter][0].to_i
    if counter < cnt/2
      if string_hash[temp] != nil && ar[counter][1] != nil
        string_hash[temp] << "-"
      else
        string_hash[temp] = "-"
      end
    else
      if string_hash != nil && ar[counter][1] != nil
        string_hash[temp] << ar[counter][1] + " "
      else
        string_hash[temp] = ar[counter][1] + " "
      end
    end
  end
    
  counter = 0
  while counter < cnt
    print "#{string_hash[counter]} "
    counter += 1
  end
end

cnt = gets.to_i
ar = []
count = 0
cnt.times do
  ar[count] = STDIN.gets.chomp.split(" ")
  count += 1
end

countsort(ar, cnt)