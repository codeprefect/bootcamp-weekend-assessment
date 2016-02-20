#Data Types

def dataTypes(argu)
  if !!argu == argu
    return "the boolean"
  elsif argu.is_a?Integer
    if argu == 100
 	  return "equal to 100"
  	else
  	  return argu < 100 ? 'less than 100' : 'more than 100'
    end
  elsif argu.is_a?String
    return argu.length
  elsif argu.is_a?Array
    return argu[2] == nil ? nil : argu[2]
  end
  else
    return "no value"
end