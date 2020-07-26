  class Ball
    attr_accessor :x, :y, :x_way, :y_way
  
    def initialize(x: 1, y: 1, x_way: 1, y_way: 1)
      @x = x
      @y = y
      @x_way = x_way
      @y_way = y_way
    end
    def reflect_x
      @x_way *= -1
    end
    def reflect_y
      @y_way *= -1
    end
    def move
      @x += @x_way
      @y += @y_way
    end
  end
  
  ball1 = Ball.new()
  ball2 = Ball.new(x:2, y: 3, x_way: -1, y_way: -1)
  
  balls = []
  4.times do |i|
    balls.push(Ball.new)
  end
  
  p ball1
  p ball2
  puts "(x, y) = (#{ball1.x}, #{ball1.y}) on (#{ball1.x_way}, #{ball1.y_way})"
  
  ball1.move
  puts "(x, y) = (#{ball1.x}, #{ball1.y}) on (#{ball1.x_way}, #{ball1.y_way})"
  
  ball1.x = 10
  
  ball1.move
  puts "(x, y) = (#{ball1.x}, #{ball1.y}) on (#{ball1.x_way}, #{ball1.y_way})"
  