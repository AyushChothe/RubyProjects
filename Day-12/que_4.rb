# 4. Write a program that takes integer age from the user if age is under 18, raise custom exception UnderAgeError and if age is over     40, raise custom exception OverAgeError.
# Input:
#         Enter age: 10
# Output:
#         You are UnderAge by 8 years..!!
# ==========================
# Input:
#         Enter age: 45
# Output:
#         You are OverAge by 5 years..!!

class UnderAgeError < StandardError
  '''Custom Exception for UnderAge'''

  def initialize(message = 'You are UnderAge')
    super(message)
  end
end

class OverAgeError < StandardError
  '''Custom Exception for OverAge'''

  def initialize(message = 'You are OverAge')
    super(message)
  end
end

begin
  print('Enter age: ')
  age = Integer(gets.chomp)

  if age < 18
    raise UnderAgeError, "You are UnderAge by #{18 - age} years..!!"
  elsif age > 40
    raise OverAgeError, "You are OverAge by #{age - 40} years..!!"
  else
    print('Your age is eligible!')
  end
rescue ArgumentError
  print('Invalid age, expected Integer!')
rescue UnderAgeError, OverAgeError => e
  print(e)
end
