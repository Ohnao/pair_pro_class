env = ENV.to_h

#env.keys.each do |key|
#  value = env[key]
#  puts "$ #{key} = #{value} \n"
#end

envs = env.keys.sort.map{ |key|
  "$ #{key} = #{env[key]}"
}.join("\n")

puts envs