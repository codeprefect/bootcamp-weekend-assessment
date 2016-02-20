#defininf minimax
def findMinMax (arre)
  smallest = arre[0]
  largest = arre[0]
  arre.each do { |val|
    if val > largest || val < smallest then
      val > largest ? largest = val : smallest = val
    end
  }
  end
  return smallest == largest ? smallest : [smallest, largest]
end

findMinMax([1,2,3,4,5,6,-1])