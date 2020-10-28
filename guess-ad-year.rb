FIRST_YEAR = {
  "令和" => 2019,
  "平成" => 1989,
  "昭和" => 1926,
  "大正" => 1912,
  "明治" => 1868
}

END_YEAR = {
  "平成" => 2019,
  "昭和" => 1989,
  "大正" => 1926,
  "明治" => 1912,
  "慶応" => 1868
}

input = ARGV[0]

#正規表現の書き換え
#input =~ /^(..)(\d+|元)年$/
#jp_era = $1
#jp_year = $2

#matchメソッドは、キャプチャした文字列をmatchオブジェクトとして値を返し、値へのアクセス方法は[]。
match = input.match(/^(..)(\d+|元|[〇一二三四五六七八九十]*)年$/)

#不正フォーマットを弾く
return if !match

jp_era = match[1]
jp_year = match[2]

##0年を弾く
return if jp_year == "0"

jp_year = (jp_year == "元") ? 1 : jp_year

beginning_year = FIRST_YEAR[jp_era]

if jp_year == "一" || jp_year == "二" || jp_year == "三" || jp_year == "四" || jp_year == "五" || \
    jp_year == "六" || jp_year == "七" || jp_year == "八" || jp_year == "九"
  jp_year = jp_year.tr("一二三四五六七八九", "1-9")
elsif jp_year == "十"
  jp_year = "10"
elsif jp_year.to_i == 0
  han_num = /[〇一二三四五六七八九十]/
  match_num = jp_year.match(/^(#{han_num})(十?#{han_num}|十)/)

  tens_place = match_num[1]
  ones_place = match_num[2]

  if tens_place == "十"
    replace_tens = tens_place.tr("十", "1")
  else
    replace_tens = tens_place.tr("一二三四五六七八九", "1-9")
  end

  if ones_place == "〇"
    replace_ones = ones_place.gsub("〇", "0")
  else
    replace_ones = ones_place.tr("十一二三四五六七八九", "0-9")
    replace_ones = replace_ones.gsub("0", "") if replace_ones.length == 2
  end
  jp_year = (replace_tens + replace_ones)
end

jp_year = jp_year.to_i

#範囲外の一例を弾く
##非対応年号を弾く
return if !beginning_year
##終了した年号移行の西暦算出を防ぐ
if jp_era != "令和"
  end_year = END_YEAR[jp_era]
  return if beginning_year + (jp_year - 1) > end_year
end

#エラーの処理だけを最初に逃すための処理を挟んでおくような早期リターンの書き方を行う
year = FIRST_YEAR[jp_era]
if !year
  puts "その年号は対応していません。対応している言語は、#{FIRST_YEAR.keys.join("・")}です。"
  exit
end

puts "西暦#{year + (jp_year - 1)}年"