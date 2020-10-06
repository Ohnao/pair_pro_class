FIRST_YEAR = {
  "平成" => 1989,
  "令和" => 2019
}

input = ARGV[0]

#正規表現の書き換え
#input =~ /^(..)(\d+|元)年$/
#jp_era = $1
#jp_year = $2

#matchメソッドは、キャプチャした文字列をmatchオブジェクトとして値を返し、値へのアクセス方法は[]。
match = input.match(/^(..)(\d+|元)年$/)
jp_era = match[1]
jp_year = match[2]

jp_year = (jp_year == "元") ? 1 : jp_year.to_i

year = FIRST_YEAR[jp_era]

#エラーの処理だけを最初に逃すための処理を挟んでおくような早期リターンの書き方を行う
if !year
  p "平成か令和の年号を指定してください"
  exit
end

p "西暦#{year + (jp_year - 1)}年"