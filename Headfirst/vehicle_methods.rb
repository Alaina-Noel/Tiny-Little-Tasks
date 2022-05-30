def accelerate
  puts "Stepping on the gas"
  puts "Speeding Up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep"
end

def use_headlights(brightness = "lowbeams")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer."
end

sound_horn
accelerate
use_headlights

def trip_mileage(miles_driven, gas_used)
return miles_driven / gas_used
end
