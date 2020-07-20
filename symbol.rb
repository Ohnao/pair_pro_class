#普通のハッシュ
nomal_hash = {
  "Avdol" => "Magician's red",
  "Igy" => "the fool",
}

nomal_hash_two = {
  "空条承太郎" => "スタープラチナ",
  "花京院典明" => "ハイエロファントグリーン",
}

# シンボルをキーとして定義したハッシュ
symbol_hash = {
  :Avdol => "Magician's red",
  :Igy => "the fool",
}

symbol_hash_two = {
  :空条承太郎 => "スタープラチナ",
  :花京院典明 => "ハイエロファントグリーン",
}

# シンボルがキーのとき、JSONのように略記することができる
json_like_hash = {
  "Avdol": "Magician's red",
  "Igy": "the fool",
}

json_like_hash_two = {
  "空条太郎条": "スタープラチナ",
  "花京院典明": "ハイエロファントグリーン",
}

# ダブルクォートが要らない
# これは JavaScript のオブジェクト記法と同じ
no_double_quote_hash = {
  Avdol: "Magician's red",
  Igy: "the fool",
}

no_double_quote_hash_two = {
	空条承太郎: "スタープラチナ",
	花京院典明: "ハイエロファントグリーン",
}

#それぞれのアクセスの仕方
#ノーマルなハッシュは文字列キーを使う
puts "Avdolのスタンドは #{nomal_hash["Avdol"]} です（文字列キー）"
puts "空条承太郎のスタンドは #{nomal_hash_two["空条承太郎"]} です（文字列キー）"

#シンボルで作られたハッシュはシンボルキーを使う
puts "Avdolのスタンドは #{symbol_hash[:Avdol]} です（シンボルキー）"
puts "空条承太郎のスタンドは #{symbol_hash_two[:空条承太郎]} です（シンボルキー）"

#ジェイソン風に書いたハッシュもシンボルをキーにする
puts "Igyのスタンドは #{json_like_hash[:Igy]} です（シンボルキー）" 
puts "花京院典明のスタンドは #{json_like_hash_two[:花京院典明]} です（シンボルキー）" 

#クォーとを必要としないハッシュもシンボルをキーにする
puts "Igyのスタンドは #{no_double_quote_hash[:Igy]} 点です（シンボルキー）"
puts "花京院典明のスタンドは #{no_double_quote_hash_two[:花京院典明]} 点です（シンボルキー）"