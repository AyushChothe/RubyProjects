# Write a ruby program to find Urls from a given string.(Regex)
std_url_re = Regexp.new(
  '(((http|https)://)(www.)?[a-zA-Z0-9@:%._\+~#?&//=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%._\+~#?&//=]*))'
)

urls = gets.chomp.scan(std_url_re)

for url in urls
  puts(url[0])
end
