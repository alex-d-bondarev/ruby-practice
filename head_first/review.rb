adjectives = []

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

File.open("reviews.txt") do |review_file|
  adjectives = review_file.readlines
                   .find_all { |line| line.include?("Truncated") }
                   .reject { |line| line.include?("--") }
                   .map { |line| find_adjective(line) }
                   .each { |adjective| adjective.delete!(':') }
end

puts adjectives
