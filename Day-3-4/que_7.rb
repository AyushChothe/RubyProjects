# 7.Read a sentence from the standard input.
# Find out how many times each word appear in given string.

print 'Enter a String: '
str = gets.chomp
words = str.split(' ').to_a

for word in words.uniq
  puts "#{word} #{words.count(word)}"
end
