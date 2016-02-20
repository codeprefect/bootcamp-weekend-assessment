def insertionSort(ar) 
  count = 1
  val = ar[count]
  while count < ar.length
    value = ar[count]
    j = count
    while j > 0 && ar[j-1] > value
      ar[j] = ar[j-1]
      j -= 1
    end
    ar[j] = value
    puts ar.join(" ")
    count += 1
  end

end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )