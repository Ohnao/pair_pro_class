input = ARGV[0]

if input.nil?
  puts "数字を入れてください"
  exit 1
end

result = input.gsub(/\d+/)do |s|
  s.reverse.scan(/\d{1,3}/).join(",").reverse
end

puts result