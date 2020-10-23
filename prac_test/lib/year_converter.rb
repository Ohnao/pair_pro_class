class YearConverter
  FIRST_YEAR = {
    "令和" => 2019,
    "平成" => 1989,
    "昭和" => 1926,
    "大正" => 1912,
    "明治" => 1868,
    "慶応" => 1865
  }

  END_YEAR = {
    "平成" => 2019,
    "昭和" => 1989,
    "大正" => 1926,
    "明治" => 1912,
    "慶応" => 1868
  }

  def guess_ad_year(string)
    match = string.match(/^(..)(\d+|元|[一二三四五六七八九十]*)年$/)

    #不正フォーマットを弾く
    return if !match

    jp_era = match[1]
    jp_year = match[2]

    jp_year = (jp_year == "元") ? 1 : jp_year

    beginning_year = FIRST_YEAR[jp_era]

    #漢数字を除く
    ##十が使われているもの
    if jp_year == "十"
      jp_year = "10"
    elsif jp_year.to_i == 0
      han_num = /[一二三四五六七八九十]/
      match_num = jp_year.match(/^(#{han_num})(十?#{han_num}|十)/)
      tens_place = match_num[1]
      ones_place = match_num[2]

      if tens_place == "十"
        replace_tens = tens_place.tr("十", "1")
      else
        replace_tens = tens_place.tr("一二三四五六七八九", "1-9")
      end
      replace_ones = ones_place.tr("十一二三四五六七八九", "0-9")
      replace_ones = replace_ones.gsub("0", "") if replace_ones.length == 2
      jp_year = (replace_tens + replace_ones)
    end

    jp_year = jp_year.to_i

    #範囲外の一例を弾く
    ##非対応年号を弾く
    return if !beginning_year
    ##0年を弾く
    return if jp_year == 0
    ##終了した年号移行の西暦算出を防ぐ
    if jp_era != "令和"
      end_year = END_YEAR[jp_era]
      return if beginning_year + (jp_year - 1) > end_year
    end

    beginning_year + (jp_year - 1)
    return beginning_year + (jp_year - 1)
  end
end