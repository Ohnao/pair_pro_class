menu = {}
menu.default = 0
STDIN.each do |line|
	line.chomp!
	(date, menu_name) = *line.split("\t")
	menu_name.gsub!(/〜.*/, '')
	menu[menu_name] += 1
end

rank = 1
previous_time, previous_rank = 0, 0
menu.sort_by { |k, v| -v }.to_h.keys.each do |key|
	break if menu[key] <= 2
	current_time = menu[key]
	current_rank = 
		current_time == previous_time ? previous_rank : rank
	puts "#{current_rank}位 #{key} #{current_time}件"
	previous_time, previous_rank = current_time, current_rank
	rank += 1
end