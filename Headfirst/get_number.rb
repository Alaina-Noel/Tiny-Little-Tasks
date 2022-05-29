#Get My Number Game
#Written by Alaina Noel

puts "Welcome to 'Get My Number!'"
print "What's your name?"
puts
input = gets
name = input.chomp
p "Welcome, #{name}!"

#Store a random number for the player to guess.
puts "I've got a random number between 1 and 100 inclusive."
puts "Try to guess it!"
target = rand(100) + 1
num_guesses = 0
guessed_it = false
remaining_guesses = 10

while num_guesses < 10 && guessed_it == false

puts "You have #{10 - num_guesses} remaing guesses left."
print "Make a guess."
guess = gets.to_i

num_guesses += 1

if guess < target
  puts "Your guess is too low, you little shit."
elsif guess > target
  puts "Your guess is too high, you little shit."
else
  puts "You've won, you little shit."
  guessed_it = true
end

end

unless guessed_it
puts "Sorry you ran out of guesses. The magic number was #{target}."
end
