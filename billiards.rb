x_max = ARGV[0]
y_max = ARGV[1]

if !x_max || !y_max
  puts "引数を指定してください"
  exit 1
end

x_max =  x_max.to_i
y_max =  y_max.to_i

#状態
x = 1
y = 1
step = 1
x_way = 1
y_way = 1

puts " #{step} (#{x},#{y})"
x += 1
y += 1
loop do
  step += 1
  puts " #{step} (#{x},#{y})"

  if y == 1 && x == x_max || x == 1 && y == y_max || x == 1 && y == 1 || x == x_max && y == y_max
    puts "GOAL!!"
    break
  elsif x == x_max
    x_way = -1
  elsif y == y_max
    y_way = -1
  elsif x == 1
    x_way = 1
  elsif y == 1
    y_way = 1
  end

  x += x_way
  y += y_way
end