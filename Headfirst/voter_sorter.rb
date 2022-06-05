lines = []

File.open("Headfirst/votes.txt") do |file|
    lines = file.readlines
end

votes = Hash.new(0)

lines.each do |line|
    name = line.chomp
    votes[name] += 1 if votes[name]
end

p votes
