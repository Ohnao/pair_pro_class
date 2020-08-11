menu = {}
menu.default = 0
STDIN.each do |line|
	line.chomp!
  line.gsub!(/\d+\/\d+\/\d+\t/, '')
	line.gsub!(/〜.*/, '')

	menu[line] += 1
end

#カウントのさせ方別解
#STDIN.each do |line|
#	line.chomp!
#  line.gsub!(/\d+\/\d+\/\d+\t/, '')
#	line.gsub!(/〜.*/, '')
#
#	menu[line] ||= 0
#	menu[line] += 1
#end

ranking_count = 1
stopping_count = 0
pre_value = []
pre_count = 0
ranking_menu = menu.sort_by { |k, v| -v }.to_h

ranking_menu.keys.each do |menu_name|
	value = ranking_menu[menu_name]
	pre_value.push value

	if value != pre_value[pre_count]
		ranking_count += stopping_count
		puts "#{ranking_count}位 #{menu_name} #{value}件"
		stopping_count = 0
		pre_count += 1
	end

	if value == pre_value[pre_count]
		puts "#{ranking_count}位 #{menu_name} #{value}件"
		stopping_count += 1
	end
end

# 別解の文字列処理
#STDIN.each do |line|
#		line.chomp!
#		(date, menu) = *line.split(/\t/)
#		menu.gsub!(/〜.*/, '')
#		p menu
#end