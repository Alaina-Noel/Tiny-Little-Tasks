
#this is an empty array called lines from txt file. At this point it contains no elements
lines_from_txt_file = []

#This is a method open called on File which is a class (I think) & I've asked AtomRunner
#to optn a file with a title review.txt & read each line and store it in an array called lines.
File.open("Headfirst/reviews.txt") do |review_file|
    lines_from_txt_file = review_file.readlines
end

#At this point the array includes 8 elements where each element is a string.


#Here I delcare an empty array called lines including truncated
lines_including_truncated = lines_from_txt_file.find_all {|line| line.include?("Truncated")}
relevent_lines = lines_including_truncated.reject {|line| line.include?("--")}

#Now relevent lines is an array with 3 items. We have gotten rid of unnecesary elements

#Here I'm defining an array that takes a string. It will split that string up by spaces and
#check for the word is. If it finds the word is it will return the next word after is.
def find_adjective(string)
    words = string.split(" ")
    index = words.find_index("is")
    words[index + 1]
end

#Here the lines 22-26 are not being used at all they have simply been defined.


adjectives = relevent_lines.map{|review| adjective = find_adjective(review)
    " \"#{adjective.capitalize}\""}

#This method called map takes a block. First it uses the array called relevent lines
# and the first time around the first element called "review" is one entire line 10-15 words.
# that entire string gets put into the find adjective method and that method returns the word "amazing"
#The word amazing is stored as the variable called adjective. Then it is capitalized, then it is stored in an
#array called adjectives. The part where it gets stored in an array is built in to the .map method.

 puts adjectives
