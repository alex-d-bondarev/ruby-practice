# Get My Number game

puts "Welcome to 'Get My Number' game!"
print "What's your name? "
inputName = gets.chomp
puts "Welcome, #{inputName}!"

puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
rand_result = rand(100) + 1
num_guesses = 0
guessed_it = false

until num_guesses >= 10 || guessed_it
  puts "You have got #{10 - num_guesses} tries left"
  print "Make a guess: "
  guess = gets.to_i

  if guess < rand_result
    puts "Oops. Your guess was LOW."
  elsif guess > rand_result
    puts "Oops. Your guess was HIGH."
  elsif guess == rand_result
    puts "Good job, #{inputName}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end

  num_guesses += 1

end

unless guessed_it
  puts "Sorry. You didn't get my number (it was #{rand_result})."
end