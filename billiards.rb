def move_ball(hash)
	hash["x"] += hash["x_way"]
	hash["y"] += hash["y_way"]
	hash["step"] += 1
end

def reflect_x(hash)
	if hash["x_way"] == 1
		hash["x_way"] = -1
  elsif hash["x_way"] == -1
    hash["x_way"] = 1
  end
end

def reflect_y(hash)
	if hash["y_way"] == 1
		hash["y_way"] = -1
  elsif hash["y_way"] == -1
    hash["y_way"] = 1
  end
end

def goal?(hash, x_max, y_max)
  hash["y"] == 1 && hash["x"] == x_max \
  || hash["x"] == 1 && hash["y"] == y_max \
  || hash["x"] == 1 && hash["y"] == 1 \
  || hash["x"] == x_max && hash["y"] == y_max
end

def boundary_x?(hash, x_max)
  hash["x"] == x_max || hash["x"] == 1
end

def boundary_y?(hash, y_max)
  hash["y"] == y_max || hash["y"] == 1
end

x_max = ARGV[0]
y_max = ARGV[1]

if !x_max || !y_max
  puts "引数を指定してください"
  exit 1
end

x_max =  x_max.to_i
y_max =  y_max.to_i

#状態
state = {
  "x" => 1,
  "y" => 1,
  "step" => 1,
  "x_way" => 1,
  "y_way" => 1
}

puts " #{state["step"]} (#{state["x"]},#{state["y"]})"

loop do
  move_ball(state)

  puts " #{state["step"]} (#{state["x"]},#{state["y"]})"

  if goal?(state, x_max, y_max)
    puts "GOAL!!"
    break
  elsif boundary_x?(state, x_max)
    reflect_x(state)
  elsif boundary_y?(state, y_max)
    reflect_y(state)
  end
end