def insertionSort(ar) 
  location = ar.length - 1
  val = ar.last
  sorted = false
  while !sorted
    if val < ar[location - 1] 
      ar[location] = ar[location - 1]
    end
    location -= 1
    if ar[location - 1] < val || location == 0
      ar[location] = val
      sorted = true
    end
    puts ar.join(" ")
  end
end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )