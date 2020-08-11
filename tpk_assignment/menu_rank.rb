menu = {}
menu.default = 0
STDIN.each do |line|
	line.chomp!
  line.gsub!(/\d+\/\d+\/\d+\t/, '')
	line.gsub!(/〜.*/, '')

	menu[line] += 1
end

count = 1
ranking_menu = menu.sort_by { |k, v| -v }.to_h
p ranking_menu
ranking_menu.keys.each do |menu_name|
	puts "#{count}位 #{menu_name}"
	count += 1
end

# 別解の文字列処理
#STDIN.each do |line|
#		line.chomp!
#		(date, menu) = *line.split(/\t/)
#		menu.gsub!(/〜.*/, '')
#		p menu
#end
