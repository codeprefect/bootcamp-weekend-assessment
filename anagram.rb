#The anagram battle

class Anagram
  def initialize(value)
    @value = value.downcase
    @svalue = @value.split("").sort
  end
  
  def matches(*arr)
    newarr = []
    arr.each do |val|
      if @svalue.length == val.length && @value != val.downcase
        val.downcase.split("").sort == @svalue ? newarr << val : nil
      end
    end
    newarr
  end
end