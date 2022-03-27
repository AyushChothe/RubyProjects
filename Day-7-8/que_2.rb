# 2. Write a program that takes positive number from user, if negative number provided raise exception.
# =======================================
# Input:
#         Enter a positive integer: -5
# Output:
#         That is a negative number!

# NOTE: Use exception handling in the below handson as well.

print 'Enter a positive integer: '
num = gets.chomp

begin
  num = Integer(num)
  puts 'That is a negative number!' if num < 0
rescue StandardError
  puts 'Invalid Input'
end
