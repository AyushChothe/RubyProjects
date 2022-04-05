# 3. Write a ruby that takes two inputs from user and perform division of input1 by input2.
#     -Handle invalid integers
#     -Handle divide by zero exception.  (Use Nested exception, else and finally)
#     =========================================
#     Input:
#         Enter Input1: 10
#         Enter Input2: 0
#     Output:
#         Divide by Zero exception...!!!
#         Hi, I'm from finally...!!!
#     ==========================================
#     Input:
#         Enter Input1: 10
#         Enter Input2: abc
#     Output:
#         Invalid inputs, expected integers...!!!
#         Hi, I'm from finally...!!!

begin
  print 'Enter Input1: '
  ip_1 = Integer(gets.chomp)
  print 'Enter Input2: '
  ip_2 = Integer(gets.chomp)

  begin
    puts(format('Division is: %.2f', (ip_1 / ip_2)))
  rescue ZeroDivisionError
    puts('Divide by Zero exception...!!!')
  end
rescue ArgumentError
  puts('Invalid inputs, expected integers...!!!')
ensure
  puts("Hi, I'm from finally...!!!")
end
