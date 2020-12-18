#! /var/www/.rbenv/shims/ruby

require 'date'

env = ENV

envs = env.keys.sort.map{ |key|
  "$ #{key} = #{env[key]}"
}.join("\n")

local_time = Time.now

content = STDIN.readlines.join("")

puts "Content-Type: text/html";
puts "Set-Cookie: fruit=orange"
puts <<END_CONTENT;

<html>
<head>
<title>hello</title>
</head>
<body>
<h1 style='color: orange'>Hello!</h1>
<p>This script is CGI.</p>
<h2>Env</h2>
<pre>
#{envs}
</pre>
<p>at #{local_time} </p>
<h3>Remote IP Address</h3>
<p style='color: red; font-weight: 900'> #{env["REMOTE_ADDR"]} </p>

<form action='/env.cgi' method='post'>
<p>挨拶
  <input type='text' name='greeting' value='Hello'>
</p>
<p>好きな食べ物
  <input type='text' name='food'>
</p>
<p>
  <input type='submit' value='送信'>
</p>
</form>
<p> フォームで受け取った内容
<pre>#{content}</pre>
</p>
</body>
</html>

END_CONTENT