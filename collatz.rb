number = ARGV[0].to_i

while number != 1
  if number % 2 == 0
    number = number / 2
  else
    number = (number * 3) + 1
  end
  puts number
end

puts "Congraturation!"