# 8.Paresh owns a company that moves containers between two islands.
# He has N trips booked, and each trip has P containers.
# Paresh has M boats for transporting containers, and each boat's maximum capacity is C containers.
# Given the number of containers going on each trip, determine whether or not Paresh can perform all trips using no more than boats per individual trip.
# If this is possible, print Yes; otherwise, print No.
# Input FormatThe first line contains three space-separated integers describing the respective values of N(number of trips), C (boat capacity), and M(total number of boats).
# The second line contains space-separated integers describing the value for containerfor each trip.Constraints
# * 1<= m,c ,p<=100

n, c, m = gets.chomp.strip.split(' ').map { |x| x.to_i }
cnts = gets.chomp.strip.split(' ').map { |x| x.to_i }
out = 'Yes'

for cnt in cnts
  out = 'No' if cnt > (c * m)
end

puts out
