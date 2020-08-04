#numbers = [111, 222, 333]
#
#num = []
#numbers.each do |number|
#	result = number.pow(2)
#	num.push result
#end
#p num

string_numbers = ["123", "234", "345", "456"]
# ↓
#integer_numbers = [123, 234, 345, 456] # これを作って欲しい

# integer_numbers = []
# string_numbers.each do |number|
#   integer_numbers.push number.to_i
# end
# each ではなく map で

integer_numbers = string_numbers.map {|num| num.to_i}
sum = integer_numbers.sum
p sum