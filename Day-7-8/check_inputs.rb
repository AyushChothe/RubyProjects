# 1. Write a program check_inputs.rb that gets two inputs  and checks that the first represents a valid int
# number and that the second represents a valid float number. (Exception handling)
# =====================================
# Input:
# 	Enter Input1: 10
# 	Enter Input2: Hello!!
# Output:
# 	"Hello!" is not a valid second input, expected a float value

print 'Enter Input 1: '
ip1 = gets.chomp
print 'Enter Input 2: '
ip2 = gets.chomp

begin
  Integer(ip1)
rescue StandardError
  puts "#{ip1} is not a valid first input, expected a integer value"
end

begin
  Float(ip2)
rescue StandardError
  puts "#{ip2} is not a valid second input, expected a float value"
end
