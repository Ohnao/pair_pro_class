point = {
	"alice" => 13,
	"bob" => 46,
	"carol" => 31,
	"dave" => 7,
	"eve" => 26,
	"foy" => 76,
	"ginger" => 7,
	"hoffmann" => 89,
	"isaac" => 98,
	"justin" => 67,
	"kugar" => 60,
	"linda" => 3,
	"mallory" => 20,
	"navy" => 58,
	"oscar" => 86,
	"peggy" => 48,
	"quick" => 74,
	"rock" => 9,
	"steve" => 100,
	"trent" => 5,
	"urin" => 79,
	"vincent" => 22,
	"walter" => 26,
	"zoe" => 35,
};

student_sum = point.length

#point_sum = point.values.inject(:+)
point_sum = point.values.sum

p "平均点"
p average_point = point_sum / student_sum

p "平均点以下の生徒"
point.each do |key, value|
	if value < average_point
		puts key
	end
end

p "分散"
differences = []
point.values.each do |value|
	difference = (value - average_point)**2
	differences.push difference
end

p variance = differences.sum / student_sum

p "標準偏差"
p Math.sqrt(variance)