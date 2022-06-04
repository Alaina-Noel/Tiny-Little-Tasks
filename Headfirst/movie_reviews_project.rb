lines = []

File.open("Headfirst/reviews.txt") do |review_file|
    lines = review_file.readlines
end

relevent_lines = []

relevent_lines = lines.find_all {|line| line.include?("Truncated")}


puts lines.length
puts lines

p relevent_lines
