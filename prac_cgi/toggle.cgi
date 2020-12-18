#! /var/www/.rbenv/shims/ruby

require 'fileutils'

if File.exist?('/tmp/asakai_skip.txt')
  File.delete('/tmp/asakai_skip.txt')
  asakai = "朝会を行いました"
else
  FileUtils.touch('/tmp/asakai_skip.txt')
  asakai= "朝会をスキップしました"
end

puts "Content-Type: text/html";
puts <<END_CONTENT;

<html>
<head>
<title>morning meeting</title>
</head>
<body>
<h1 style='color: orange'>morning meeting</h1>
<p> #{asakai} </p>
</body>
</html>

END_CONTENT