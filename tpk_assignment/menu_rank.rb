menu_count = {}
menu_count.default = 0
STDIN.each do |line|
	line.chomp!
	menu_name = line.gsub(/\d+\/\d+\/\d+\t/, '')
	menu_name.gsub!(/〜.*/, '')

	menu_count[menu_name] += 1
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

rank = 2
#順位の増分をストップした回数
stopping_count = 0
history_times = []
history_menu = []
pre_index = 0
pre_menu_index = 0
rankings = menu_count.sort_by { |k, v| -v }
ranking_menu = menu_count.sort_by { |k, v| -v }.to_h

puts "1位 #{rankings[0][0]} #{rankings[0][1]}件"

ranking_menu.keys.each do |menu_name|
	times = ranking_menu[menu_name]
	history_times.push times
	history_menu.push menu_name

	if times != history_times[pre_index]
		rank += stopping_count
		stopping_count = 0
		pre_index += 1
	end

	if times == history_times[pre_index] && menu_name != history_menu[pre_menu_index]
		puts "#{rank}位 #{menu_name} #{times}件"
		stopping_count += 1
		pre_menu_index += 1
	end
end

# 別解の文字列処理
#STDIN.each do |line|
#		line.chomp!
#		(date, menu) = *line.split(/\t/)
#		menu.gsub!(/〜.*/, '')
#		p menu
#end
