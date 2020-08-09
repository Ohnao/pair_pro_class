#numbers = [111, 222, 333]
#
#num = []
#numbers.each do |number|
#	result = number.pow(2)
#	num.push result
#end
#p num

#string_numbers = ["123", "234", "345", "456"]
# ↓
#integer_numbers = [123, 234, 345, 456] # これを作って欲しい

# integer_numbers = []
# string_numbers.each do |number|
#   integer_numbers.push number.to_i
# end
# each ではなく map で

#integer_numbers = string_numbers.map {|num| num.to_i}
#sum = integer_numbers.sum
#
#
#numbers1 =  [125, 34, 45, 50, 245, 4, 654, 10, 123, 1000]

#hundred_num =  numbers1.filter {|num| num / 100 < 10 && num / 100 != 0}
#p hundred_num

#hundred_num2 =  numbers1.filter {|num| num.to_s.size == 3 }
#p hundred_num2
#
#hundred_num3 =  numbers1.filter {|num| 100 <= num && num < 1000 }
#p hundred_num2

numbers = [111, 222, 333]

mapping_number = numbers.map {|num| num ** 2}
p mapping_number

#numbers =  [111, 222, 333] 
#count = 0
#numbers.each do |num|
#    numbers[count] = numbers[count] ** 2
#    count += 1
#end
#
#p numbers