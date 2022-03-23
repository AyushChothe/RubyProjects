# 4.Write a ruby function to remove the characters which have odd index values of a given string.

print 'Enter a String: '
str = gets.chomp

even_str = ''

(0..str.length).step(2) do |i|
  even_str += str[i]
end

puts even_str
