# 1.Write a ruby function which counts the frequency of given character in a given string.
# Inputs - A String A Character whose frequency needs to be determined
print 'Enter a String: '
str = gets.chomp
print 'Enter a Char: '
chr = gets.chomp[0]

puts "#{str} has #{str.count(chr)} '#{chr}'s"
