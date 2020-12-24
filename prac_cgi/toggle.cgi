#! /var/www/.rbenv/shims/ruby

require 'fileutils'

ASAKAI_FILE = '/tmp/asakai_skip.txt'

if File.exist?(ASAKAI_FILE)
  File.delete(ASAKAI_FILE)
  asakai = "朝会を行いました"
else
  FileUtils.touch(ASAKAI_FILE)
  asakai= "朝会をスキップしました"
end

puts "Content-Type: text/html"
puts ""
puts <<END_CONTENT

<html>
<head>
<title>morning meeting</title>
</head>
<body>
<h1 style='color: orange'>morning meeting</h1>
<p>#{asakai}</p>
</body>
</html>

END_CONTENT