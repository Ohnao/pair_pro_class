class Student
  attr_accessor :id, :name, :english, :mathematics, :science, :society, :japanese

  @@student_of = {} # クラス変数、クラスが読み込まれた時に初期化されるもの
  STDIN.each do |line|
    (id, name, english, mathematics, science, society, japanese) = *line.split("\t")
    @@student_of[id] = {
      "name" => name,
      "english" => english.to_i,
      "mathematics" => mathematics.to_i,
      "science" => science.to_i,
      "society" => society.to_i,
      "japanese" => japanese.to_i
    }
  end

  def initialize(uid)
    student      = @@student_of[uid]
    # @name        = student["name"]
    # @english     = student["english"]
    # @mathematics = student["mathematics"]
    # @science     = student["science"]
    # @society     = student["society"]
    # @japanese    = student["japanese"]
    (@name, @english, @mathematics, @science, @society, @japanese) =
      *%w(name english mathematics science society japanese).map do |key|
        student[key]
      end
  end

  def self.all
    @@student_of.keys.map do |uid|
      new(uid)
    end
  end

  def points
    [@english, @mathematics, @science, @society, @japanese]
  end

  def sum
    points.sum
  end

  def average
     points.sum / points.size
  end

end

student = Student.new("20201101")

p student.name
p student.average
pp Student.all

Student.all.each do |student|
  puts student.average
end
