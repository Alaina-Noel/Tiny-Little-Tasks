module LengthConversions

  WEBSITE = "https://mod0.turing.edu/computer-setup"

def self.miles_to_feet(miles)
  miles * 5280
end

def self.miles_to_inches(miles)
  feet = miles_to_feet(miles)
  feet * 12
end

def self.miles_to_centimeters(miles)
  centimeters = miles_to_inches(miles)
  inches * 2.54
end
end


puts LengthConversions::WEBSITE

puts LengthConversions.miles_to_feet(100)

puts LengthConversions.miles_to_inches(1000)
