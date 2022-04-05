# 2. Write a ruby program to convert a date of yyyy-mm-dd format to dd-mm-yyyy format.(regex)
date_re = /(\d{4})-(\d{2})-(\d{2})/

res = gets.chomp.match(date_re)
print('Date (dd-mm-yyy): ', res.captures.reverse.join('-'))
