lines = []

File.open("Headfirst/votes.txt") do |file|
    lines = file.readlines
end

puts lines
