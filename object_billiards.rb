class Ball
	attr_accessor :x, :y, :x_way, :y_way, :step

	def initialize(x: 1, y: 1, x_way: 1, y_way: 1, step: 1)
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

class BilliardTable
	attr_accessor :length_x, :length_y, :ball

	def initialize(length_x: nil, length_y: nil, ball: nil)
		@length_x = length_x
		@length_y = length_y
		@ball = ball
	end

	def cue
		print_status

		loop do
			@ball.move

			print_status
		
			if @ball.goal?(@length_x, @length_y)
				puts "GOAL!!"
				break
			elsif @ball.boundary_x?(@length_x)
				@ball.reflect_x
			elsif @ball.boundary_y?(@length_y)
				@ball.reflect_y
			end
		end
	end

	def print_status
		puts "#{@ball.step}, (#{@ball.x}, #{@ball.y})"
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

#ball = Ball.new()
#
#bt = BilliardTable.new(length_x: x_max, length_y: y_max, ball: ball)
#
#bt.cue

(6..16).each do |times|
	puts "3 x #{times}のビリヤード台で、実行します"
	bt = BilliardTable.new(length_x: 3, length_y: times, ball: Ball.new)
	bt.cue
end