menu = {}
STDIN.each do |line|
	line.chomp!
	(date, menu_name) = *line.split("\t")
	menu_name.gsub!(/〜.*/, '')
	menu[date] = {"menu_name" => menu_name}
end

menu.keys.each do |key|
	p menu[key]
end