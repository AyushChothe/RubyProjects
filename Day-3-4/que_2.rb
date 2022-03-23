# 2.Write a ruby program to get a string made of the first 2 and the last 2 chars from a given a string.
# If the string length is less than 2, return "Empty String"

print "Enter a String: "
str = gets.chomp
if(str.length<2)
    puts ""
else
    puts (str[0..1] +str[-2..])
end