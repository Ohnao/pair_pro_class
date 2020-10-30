class YearConverter
  FIRST_YEAR = {
    "令和" => 2019,
    "平成" => 1989,
    "昭和" => 1926,
    "大正" => 1912,
    "明治" => 1868,
    "慶応" => 1865
  }

  YEAR_SEQUENCE = %w(慶応 明治 大正 昭和 平成 令和)
  NEXT_ERA = YEAR_SEQUENCE.zip(YEAR_SEQUENCE.slice(1, YEAR_SEQUENCE.length - 1)).to_h
  #NEXT_ERA = YEAR_SEQUENCE.map.with_index{ |e, i| [e, YEAR_SEQUENCE[i + 1]]}.to_h

  def guess_ad_year(string)
    match = string.match(/^(..)(\d+|元|[〇一二三四五六七八九十]*)年$/)

    #不正フォーマットを弾く
    return if !match

    jp_era = match[1]
    jp_year = match[2]

    ##0年を弾く
    return if jp_year == "0"

    beginning_year = FIRST_YEAR[jp_era]
    han_num = /[〇一二三四五六七八九十]/

    #漢数字を除く
    ##十が使われているもの
    han_nums = %w(一 二 三 四 五 六 七 八 九)
    if han_nums.include?(jp_year)
      jp_year = jp_year.tr("一二三四五六七八九", "1-9")
    elsif jp_year == "十"
      jp_year = "10"
    elsif jp_year == "元"
      jp_year = "1"
    elsif jp_year.match(han_num)
      match_num = jp_year.match(/^(#{han_num})(十?#{han_num}|十)$/)
      tens_place = match_num[1]
      ones_place = match_num[2]

      if
        replace_tens = tens_place.tr("一二三四五六七八九十", "1234567891")
      end

      if ones_place == "〇"
        replace_ones = "0"
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
      end_year = FIRST_YEAR[NEXT_ERA[jp_era]]
      return if beginning_year + (jp_year - 1) > end_year
    end

    beginning_year + (jp_year - 1)
    return beginning_year + (jp_year - 1)
  end
end