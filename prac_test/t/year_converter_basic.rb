$LOAD_PATH.push('lib')
require 'minitest/autorun'
require 'year_converter'
class YearConverterTest < Minitest::Test
  def setup
    @yc = YearConverter.new
  end
  # 令和テスト
  def test_yc_1
    assert_equal @yc.guess_ad_year("令和1年"), 2019, "令和1年は2019年"
  end
  def test_yc_2
    assert_equal @yc.guess_ad_year("令和2年"), 2020, "令和2年は2020年"
  end
  def test_yc_3
    assert_equal @yc.guess_ad_year("令和10年"), 2028, "令和10年は2028年"
  end
  # 平成2桁テスト（全部）
  def test_yc_4
    assert_equal @yc.guess_ad_year("平成31年"), 2019, "平成31年は2019年"
  end
  def test_yc_5
    assert_equal @yc.guess_ad_year("平成30年"), 2018, "平成30年は2018年"
  end
  def test_yc_6
    assert_equal @yc.guess_ad_year("平成29年"), 2017, "平成29年は2017年"
  end
  def test_yc_7
    assert_equal @yc.guess_ad_year("平成28年"), 2016, "平成28年は2016年"
  end
  def test_yc_8
    assert_equal @yc.guess_ad_year("平成27年"), 2015, "平成27年は2015年"
  end
  def test_yc_9
    assert_equal @yc.guess_ad_year("平成26年"), 2014, "平成26年は2014年"
  end
  def test_yc_10
    assert_equal @yc.guess_ad_year("平成25年"), 2013, "平成25年は2013年"
  end
  def test_yc_11
    assert_equal @yc.guess_ad_year("平成24年"), 2012, "平成24年は2012年"
  end
  def test_yc_12
    assert_equal @yc.guess_ad_year("平成23年"), 2011, "平成23年は2011年"
  end
  def test_yc_13
    assert_equal @yc.guess_ad_year("平成22年"), 2010, "平成22年は2010年"
  end
  def test_yc_14
    assert_equal @yc.guess_ad_year("平成21年"), 2009, "平成21年は2009年"
  end
  def test_yc_15
    assert_equal @yc.guess_ad_year("平成20年"), 2008, "平成20年は2008年"
  end
  def test_yc_16
    assert_equal @yc.guess_ad_year("平成19年"), 2007, "平成19年は2007年"
  end
  def test_yc_17
    assert_equal @yc.guess_ad_year("平成18年"), 2006, "平成18年は2006年"
  end
  def test_yc_18
    assert_equal @yc.guess_ad_year("平成17年"), 2005, "平成17年は2005年"
  end
  def test_yc_19
    assert_equal @yc.guess_ad_year("平成16年"), 2004, "平成16年は2004年"
  end
  def test_yc_20
    assert_equal @yc.guess_ad_year("平成15年"), 2003, "平成15年は2003年"
  end
  def test_yc_21
    assert_equal @yc.guess_ad_year("平成14年"), 2002, "平成14年は2002年"
  end
  def test_yc_22
    assert_equal @yc.guess_ad_year("平成13年"), 2001, "平成13年は2001年"
  end
  def test_yc_23
    assert_equal @yc.guess_ad_year("平成12年"), 2000, "平成12年は2000年"
  end
  def test_yc_24
    assert_equal @yc.guess_ad_year("平成11年"), 1999, "平成11年は1999年"
  end
  def test_yc_25
    assert_equal @yc.guess_ad_year("平成10年"), 1998, "平成10年は1998年"
  end
  # 平成1桁テスト（全部）
  def test_yc_26
    assert_equal @yc.guess_ad_year("平成9年"), 1997, "平成9年は1997年"
  end
  def test_yc_27
    assert_equal @yc.guess_ad_year("平成8年"), 1996, "平成8年は1996年"
  end
  def test_yc_28
    assert_equal @yc.guess_ad_year("平成7年"), 1995, "平成7年は1995年"
  end
  def test_yc_29
    assert_equal @yc.guess_ad_year("平成6年"), 1994, "平成6年は1994年"
  end
  def test_yc_30
    assert_equal @yc.guess_ad_year("平成5年"), 1993, "平成5年は1993年"
  end
  def test_yc_31
    assert_equal @yc.guess_ad_year("平成4年"), 1992, "平成4年は1992年"
  end
  def test_yc_32
    assert_equal @yc.guess_ad_year("平成3年"), 1991, "平成3年は1991年"
  end
  def test_yc_33
    assert_equal @yc.guess_ad_year("平成2年"), 1990, "平成2年は1990年"
  end
  def test_yc_34
    assert_equal @yc.guess_ad_year("平成1年"), 1989, "平成1年は1989年"
  end
  # 昭和2桁テスト（一部）
  def test_yc_35
    assert_equal @yc.guess_ad_year("昭和64年"), 1989, "昭和64年は1989年"
  end
  def test_yc_36
    assert_equal @yc.guess_ad_year("昭和63年"), 1988, "昭和63年は1988年"
  end
  def test_yc_37
    assert_equal @yc.guess_ad_year("昭和62年"), 1987, "昭和62年は1987年"
  end
  def test_yc_38
    assert_equal @yc.guess_ad_year("昭和60年"), 1985, "昭和60年は1985年"
  end
  def test_yc_39
    assert_equal @yc.guess_ad_year("昭和59年"), 1984, "昭和59年は1984年"
  end
  def test_yc_40
    assert_equal @yc.guess_ad_year("昭和54年"), 1979, "昭和54年は1979年"
  end
  def test_yc_41
    assert_equal @yc.guess_ad_year("昭和53年"), 1978, "昭和53年は1979年"
  end
  def test_yc_42
    assert_equal @yc.guess_ad_year("昭和48年"), 1973, "昭和48年は1973年"
  end
  def test_yc_43
    assert_equal @yc.guess_ad_year("昭和40年"), 1965, "昭和40年は1965年"
  end
  def test_yc_44
    assert_equal @yc.guess_ad_year("昭和36年"), 1961, "昭和36年は1961年"
  end
  def test_yc_45
    assert_equal @yc.guess_ad_year("昭和28年"), 1953, "昭和28年は1953年"
  end
  def test_yc_46
    assert_equal @yc.guess_ad_year("昭和20年"), 1945, "昭和20年は1945年"
  end
  def test_yc_47
    assert_equal @yc.guess_ad_year("昭和12年"), 1937, "昭和12年は1937年"
  end
  def test_yc_48
    assert_equal @yc.guess_ad_year("昭和10年"), 1935, "昭和10年は1935年"
  end
  # 昭和1桁テスト（一部）
  def test_yc_49
    assert_equal @yc.guess_ad_year("昭和9年"), 1934, "昭和12年は1934年"
  end
  def test_yc_50
    assert_equal @yc.guess_ad_year("昭和1年"), 1926, "昭和12年は1926年"
  end
  # 大正2桁テスト（一部）
  def test_yc_51
    assert_equal @yc.guess_ad_year("大正15年"), 1926, "大正15年は1926年"
  end
  def test_yc_52
    assert_equal @yc.guess_ad_year("大正10年"), 1921, "大正10年は1921年"
  end
  # 大正1桁テスト（一部）
  def test_yc_53
    assert_equal @yc.guess_ad_year("大正9年"), 1920, "大正9年は1920年"
  end
  def test_yc_54
    assert_equal @yc.guess_ad_year("大正4年"), 1915, "大正4年は1915年"
  end
  def test_yc_55
    assert_equal @yc.guess_ad_year("大正1年"), 1912, "大正1年は1912年"
  end
  # 明治2桁テスト（一部）
  def test_yc_56
    assert_equal @yc.guess_ad_year("明治45年"), 1912, "明治45年は1912年"
  end
  def test_yc_57
    assert_equal @yc.guess_ad_year("明治33年"), 1900, "明治33年は1900年"
  end
  def test_yc_58
    assert_equal @yc.guess_ad_year("明治32年"), 1899, "明治32年は1899年"
  end
  def test_yc_59
    assert_equal @yc.guess_ad_year("明治23年"), 1890, "明治23年は1890年"
  end
  def test_yc_60
    assert_equal @yc.guess_ad_year("明治18年"), 1885, "明治18年は1885年"
  end
  def test_yc_61
    assert_equal @yc.guess_ad_year("明治10年"), 1877, "明治10年は1877年"
  end
  # 明治1桁テスト（一部）
  def test_yc_62
    assert_equal @yc.guess_ad_year("明治9年"), 1876, "明治9年は1876年"
  end
  def test_yc_63
    assert_equal @yc.guess_ad_year("明治6年"), 1873, "明治6年は1873年"
  end
  def test_yc_64
    assert_equal @yc.guess_ad_year("明治2年"), 1869, "明治2年は1869年"
  end
  def test_yc_65
    assert_equal @yc.guess_ad_year("明治1年"), 1868, "明治1年は1868年"
  end
  # 慶応テスト
  def test_yc_66
    assert_equal @yc.guess_ad_year("慶応4年"), 1868, "慶応4年は1868年"
  end
  def test_yc_67
    assert_equal @yc.guess_ad_year("慶応1年"), 1865, "慶応1年は1865年"
  end
  # 元年テスト
  def test_yc_68
    assert_equal @yc.guess_ad_year("平成元年"), 1989, "平成元年は1989年"
  end
  def test_yc_69
    assert_equal @yc.guess_ad_year("昭和元年"), 1926, "昭和元年は1926年"
  end
  def test_yc_70
    assert_equal @yc.guess_ad_year("大正元年"), 1912, "大正元年は1912年"
  end
  def test_yc_71
    assert_equal @yc.guess_ad_year("明治元年"), 1868, "明治元年は1868年"
  end
  def test_yc_72
    assert_equal @yc.guess_ad_year("慶応元年"), 1865, "慶応元年は1865年"
  end
  # 漢数字テスト：平成より
  ## 10の位に漢数字「十」を使うもの
  def test_yc_73
    assert_equal @yc.guess_ad_year("平成三十一年"), 2019, "平成三十一年は2019年"
  end
  def test_yc_74
    assert_equal @yc.guess_ad_year("平成三十年"), 2018, "平成三十年は2018年"
  end
  def test_yc_75
    assert_equal @yc.guess_ad_year("平成二十七年"), 2015, "平成二十七年は2015年"
  end
  def test_yc_76
    assert_equal @yc.guess_ad_year("平成二十一年"), 2009, "平成二十一年は2009年"
  end
  def test_yc_77
    assert_equal @yc.guess_ad_year("平成二十年"), 2008, "平成二十年は2008年"
  end
  def test_yc_78
    assert_equal @yc.guess_ad_year("平成十一年"), 1999, "平成十一年は1999年"
  end
  def test_yc_79
    assert_equal @yc.guess_ad_year("平成十年"), 1998, "平成十年は1998年"
  end
  ## 10の位に漢数字「十」を使わないでアラビア数字のように位を位置取りするもの
  ## 1の位が 0 になる場合は、漢数字の「〇」を使う
  ## 10の位が 1 の場合に 15 を 一五 とする書き方は一般的ではないので、テストからは除外した
  def test_yc_80
    assert_equal @yc.guess_ad_year("平成三一年"), 2019, "平成三十一年は2019年"
  end
  def test_yc_81
    assert_equal @yc.guess_ad_year("平成三〇年"), 2018, "平成三〇年は2018年"
  end
  def test_yc_82
    assert_equal @yc.guess_ad_year("平成二七年"), 2015, "平成二十七年は2015年"
  end
  def test_yc_83
    assert_equal @yc.guess_ad_year("平成二一年"), 2009, "平成二十一年は2009年"
  end
  def test_yc_84
    assert_equal @yc.guess_ad_year("平成二〇年"), 2008, "平成二〇年は2008年"
  end
  #is guess_ad_year("平成一一年"), 1999, "平成十一年は1999年"; # 除外
  #is guess_ad_year("平成一〇年"), 1998, "平成十年は1998年"; # 除外
  ## 1の位で収まるもの
  def test_yc_85
    assert_equal @yc.guess_ad_year("平成九年"), 1997, "平成九年は1997年"
  end
  def test_yc_86
    assert_equal @yc.guess_ad_year("平成三年"), 1991, "平成三年は1991年"
  end
  def test_yc_87
    assert_equal @yc.guess_ad_year("平成一年"), 1989, "平成一年は1989年"
  end
  # なお、漢数字のみの対応でよく、大字は不正なフォーマットとして除外して良い
  # https://ja.wikipedia.org/wiki/%E5%A4%A7%E5%AD%97_(%E6%95%B0%E5%AD%97)
  # 不正なフォーマット一例
  def test_yc_88
    assert !@yc.guess_ad_year("平成I年"), "ローマ数字Iは受け入れない"
  end
  def test_yc_89
    assert !@yc.guess_ad_year("平成元元年"), "平成元元年はおかしい"
  end
  def test_yc_90
    assert !@yc.guess_ad_year("平成元〇年"), "平成元〇年はおかしい"
  end
  def test_yc_91
    assert !@yc.guess_ad_year("昭和平成5年"), "昭和平成5年はおかしい"
  end
  def test_yc_92
    assert !@yc.guess_ad_year("平10年"), "平10年はおかしい"
  end
  def test_yc_93
    assert !@yc.guess_ad_year("平成 10年"), "元号の後に空白は入らない"
  end
  def test_yc_94
    assert !@yc.guess_ad_year(" 平成10年"), "元号の前に空白は入らない"
  end
  def test_yc_95
    assert !@yc.guess_ad_year("西暦31年"), "西暦(31年)を受け入れてはいけない"
  end
  def test_yc_96
    assert !@yc.guess_ad_year("西暦2021年"), "西暦(2021年)を受け入れてはいけない"
  end
  def test_yc_97
    assert !@yc.guess_ad_year("昭和53.0年"), "数値的に正しくても小数点表記は受け入れない"
  end
  def test_yc_98
    assert !@yc.guess_ad_year("昭和53年9月"), "元号の年表記の後に月などを伴ってはいけない"
  end
  # 範囲外の一例
  def test_yc_99
    assert !@yc.guess_ad_year("平成0年"), "平成0年は無い"
  end
  def test_yc_100
    assert !@yc.guess_ad_year("平成32年"), "平成32年は無い"
  end
  def test_yc_101
    assert !@yc.guess_ad_year("昭和65年"), "昭和65年は無い"
  end
  def test_yc_102
    assert !@yc.guess_ad_year("昭和99999999999999年"), "昭和99999999999999年は無い"
  end
  def test_yc_103
    assert !@yc.guess_ad_year("大正16年"), "大正16年は無い"
  end
  def test_yc_104
    assert !@yc.guess_ad_year("明治46年"), "明治46年年は無い"
  end
  #追加課題のテスト
  #十十年になった時の対応
  def test_yc_105
    assert !@yc.guess_ad_year("平成十十年"), "平成十十年は無い"
  end
  #〇が最初についた時の対応
  def test_yc_106
    assert !@yc.guess_ad_year("平成〇二年"), "平成〇二年は無い"
  end
  #全角数字がきた時の対応
  def test_yc_107
    assert_equal @yc.guess_ad_year("昭和１２年"), 1937, "昭和１２年は1937年"
  end
  def test_yc_108
    assert_equal @yc.guess_ad_year("昭和１2年"), 1937, "昭和１２年は1937年"
  end
end