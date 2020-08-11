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

rank = 1
#順位の増分をストップした回数
stopping_count = 0
history_times = []
pre_count = 0
ranking_menu = menu.sort_by { |k, v| -v }.to_h

ranking_menu.keys.each do |menu_name|
	times = ranking_menu[menu_name]
	history_times.push times

	if times != history_times[pre_count]
		rank += stopping_count
		puts "#{rank}位 #{menu_name} #{times}件"
		stopping_count = 0
		pre_count += 1
	end

	if times == history_times[pre_count]
		puts "#{rank}位 #{menu_name} #{times}件"
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
