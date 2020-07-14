name_count = {}
STDIN.each do |line|
    line.chomp!
    count = name_count[line] ||  0

    p name_count[line] = count + 1
end

p name_count

name_count.keys.sort.each do |name|
    value = name_count[name]
    puts "#{name}が#{value}個発見されました"
end