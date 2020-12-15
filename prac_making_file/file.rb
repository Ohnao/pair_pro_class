require 'fileutils'

#if File.exist?('foo.txt')
#  asakai = "朝会を行いました"
#  File.delete('foo.txt')
#else
#  asakai= "朝会をスキップしました"
#  FileUtils.touch('foo.txt')
#enu

if File.exist?('/tmp/asakai_skip.txt')
  File.delete('/tmp/asakai_skip.txt')
  asakai = "朝会を行いました"
else
  FileUtils.touch('/tmp/asakai_skip.txt')
  asakai= "朝会をスキップしました"
end