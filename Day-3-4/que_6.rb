# 6.Write a program a function for ATM machine which takes amount as input and output should be number of notes of each denomination.
# The ATM has notes in following denomination :  2000, 500, 100.
# Note that the ATM machine rarely gives all notes of a single amount.
# If you enter 4000, it will give 1 2000rs, 3 500rs and 5 100rs notes for even distribution.

print 'Enter a Amount: '
amt = gets.chomp.to_i

out = {
  2000 => 0,
  500 => 0,
  100 => 0
}

while amt > 0
  _amt = amt
  for note in out.keys
    if amt >= note
      out[note] += 1
      amt -= note
    end
  end
  break if _amt == amt
end

out.each do |k, v|
  puts "#{v} #{k}rs " if v != 0
end
