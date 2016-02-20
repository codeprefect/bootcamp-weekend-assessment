#Reverse String

def reverse(name)
  return nil if name == ""
  nname = name.split("")
  count = name.length - 1
  rname = ""
  while count >= 0
    rname << nname[count]
    count -= 1
  end
  rname == name ? true : rname 
end