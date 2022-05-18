class Gadget

  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "Production Number
     #{rand(1..9)}-#{rand(1..9)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class}. This is the class and it
    has the ID #{self.object_id} & has class #{self.class}."
  end

end

g1 = Gadget.new("AlainaNoel", "bestpassword")

g2 = Gadget.new("Rubyfan153","password22412")
puts g2

g2.username = "blahblahblah"
puts g2

puts TrueClass.superclass.super
