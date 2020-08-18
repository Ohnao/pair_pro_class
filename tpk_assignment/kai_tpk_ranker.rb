
STDIN.each do |line|
	line.chomp!
	(date, menu_name) = *line.split("\t")
	menu_name.gsub!(/〜.*/, '')
	menu_name
end