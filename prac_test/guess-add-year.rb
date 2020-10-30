$LOAD_PATH.push("lib")
require "year_converter"

yc = YearConverter.new

input = ARGV[0]

if input.nil?
  puts "値を入れてください"
  exit 1
end

puts yc.guess_ad_year(input)