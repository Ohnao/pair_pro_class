input = ARGV[0]

if input.nil?
  puts "数字を入れてください"
  exit 1
end

#後ろから桁数を指定するのにリバースさせ、正規表現で最小桁数と最大桁数を指定し、scanでマッチした部分へjoinメソッドを用いてカンマを突っ込み、最後に元に戻す
puts input.reverse.scan(/.{1,3}/).join(",").reverse