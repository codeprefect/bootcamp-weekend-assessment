class Person
  def initialize(name,email)
    @name = name
    @email = email
  end
  
  attr_accessor :name, :email
  
  def to_s
    "name is #{@name} and email is #{@email}"
  end
  
  def inspect
    "My name is #{@name} and email is #{@email}"
  end
end


bootcamper = Person.new("Mubarak", "alimam4true@yahoo.com")

puts bootcamper
p bootcamper

class Testing
  @name = "Mubarak"
  @@name = "al-Mubarak"
 
  def initialize(oruko)
    @oruko = oruko
  end
  
  def self.to_s
    "Welcome to #{@name}"
  end
  
  def self.name
    @@"name
  end
end
 

booter = Testing.new("Ajanlekoko")

puts Testing.name