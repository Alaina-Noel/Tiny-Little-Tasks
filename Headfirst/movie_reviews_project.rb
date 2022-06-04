lines = []

File.open("Headfirst/reviews.txt") do |review_file|
    lines = review_file.readlines
end

relevent_lines = []

lines.each do |line|
    if line.include?("Truncated")
        relevent_lines << line
    end
end

puts lines.length
puts lines

p relevent_lines
