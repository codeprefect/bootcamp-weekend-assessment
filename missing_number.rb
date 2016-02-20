def missing_number1(a,b)
  counta = 0
  countb = 0
  a.each {|x| counta += x}
  b.each {|x| countb += x}
  counta > countb ? counta - countb : countb - counta
end

def missing_number2(a,b)
  arr = nil
  q = nil
  if a.length >= b.length
    a.each {|x|
      arr = x if !contain(b,x)
    }
  else
    b.each {|x|
      arr = x if !contain(a,x)
    }
  end
  arr
end

def contain(a,b)
  q = nil
  a.each {|x| q = true if x == b}
  q ? true : false
end