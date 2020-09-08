class Student
  attr_accessor :id, :name, :english, :mathematics, :science, :sciety, :japanese

  def initialize(uid)
    student = {}
    STDIN.each do |line|
      (id, name, english, mathematics, science, sciety, japanese) = *line.split("\t")

      student[id] = {
        "name" => name,
        "english" => english,
        "mathematics" => mathematics,
        "science" => science,
        "sciety" => sciety,
        "japanese" => japanese
      }
    end

    @all = student
    @name = student["#{uid}"]["name"]
    @english = student["#{uid}"]["english"]
    @mathematics = student["#{uid}"]["mathematics"]
    @science = student["#{uid}"]["science"]
    @sciety = student["#{uid}"]["sciety"]
    @japanese = student["#{uid}"]["japamese"]
  end

  def average(uid)
    (@english.to_i + @mathematics.to_i + @science.to_i + @sciety.to_i + @japanese.to_i) / 5
  end

  def all
    @all.keys.each do |key|
      p @all[key]["name"]
    end
  end
end

student = Student.new("20201101")

p student.name
p student.average("20201101")
p student.all