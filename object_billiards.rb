class Ball
	attr_accessor :x, :y, :x_way, :y_way, :step

	def initialize(x: 1, y: 1, x_way: 1, y_way: 1, step: 0)
		@x = x
		@y = y
		@x_way = x_way
		@y_way = y_way
		@step = step
	end
	
	def move
		@x += @x_way
		@y += @y_way
		@step += 1
	end

	def reflect_x
		if @x_way == 1
			@x_way = -1
		elsif @x_way == -1
			@x_way = 1
		end
	end

	def reflect_y
		if @y_way == 1
			@y_way = -1
		elsif @y_way == -1
			@y_way = 1
		end
	end

	def goal?(x_max, y_max)
		@x == x_max && y == 1 \
		|| @x == 1 && @y == y_max \
		|| @x == 1 && @y == 1 \
		|| @x == x_max && @y == y_max
	end

	def boundary_x?(x_max)
		@x == x_max || @x == 1
	end

	def boundary_y?(y_max)
		@y == y_max || @y == 1
	end
end

x_max = ARGV[0]
y_max = ARGV[1]

if !x_max || !y_max
	puts "引数を指定してください"
	exit 1
end

x_max =  x_max.to_i
y_max =  y_max.to_i

ball = Ball.new()

loop do
	ball.move
	
	puts "#{ball.step}, (#{ball.x}, #{ball.y})"

	if ball.goal?(x_max, y_max)
		puts "GOAL!!"
		break
	elsif ball.boundary_x?(x_max)
		ball.reflect_x
	elsif ball.boundary_y?(y_max)
		ball.reflect_y
	end
end