#!/usr/bin/ruby
$LOAD_PATH.push('lib')
require 'year_converter'

yc = YearConverter.new # 短い名前

puts yc.guess_ad_year("平成31年")