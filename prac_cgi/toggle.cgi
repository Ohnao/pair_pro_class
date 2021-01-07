#! /var/www/.rbenv/shims/ruby

require 'fileutils'

ASAKAI_FILE = '/tmp/asakai_skip.txt'

env = ENV

line = STDIN.gets

if env["REQUEST_METHOD"] == "GET"
  asakai = "朝会待機状態です"
elsif env["REQUEST_METHOD"] == "POST" && line && line.match(/toggle=ON/) && File.exist?(ASAKAI_FILE)
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
<form action='/toggle_asakai.cgi' method='post'>
<p>
<input type="checkbox" name="toggle" value="ON" >朝会開始
</p>
<p>
<input type='submit' value='送信'>
</p>
</form>
<p>#{asakai}</p>
</body>
</html>

END_CONTENT