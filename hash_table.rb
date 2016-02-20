#Word count

def words(sentence)
  word_list = sentence.split(" ")
  word_map = Hash.new
  word_list.each {|word|
  	word_map.has_key?(word) ? word_map[word] += 1 : word_map[word] = 1
  }
  word_map.each {|x,y| "#{x}: #{y}"}
end

words("lola is omo iya lola")