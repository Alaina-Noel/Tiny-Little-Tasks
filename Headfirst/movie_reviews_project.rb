lines = []

File.open("Headfirst/reviews.txt") do |review_file|
    lines = review_file.readlines
end

relevent_lines = []

relevent_lines = lines.find_all {|line| line.include?("Truncated")}

reviews = relevent_lines.reject {|line| line.include?("--")}

review = relevent_lines.first

def return_adjective(string)
    words = string.split(" ")
    index = words.find_index("is")
    words[index + 1]
end

adjective = return_adjective(reviews.first)
p adjective
