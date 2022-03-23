# 5.Write a ruby function to insert a string in the middle of a string.
# For odd length of string, remove the middle character and replace with given string.

print 'Enter a String: '
str = gets.chomp

print 'Enter a String to Insert: '
mid_str = gets.chomp

puts (str[0..((str.length / 2.0) - 1)] + mid_str + str[(str.length / 2.0).ceil()..])
