require "date"

class SpecialMonth
  attr_accessor :year, :month

  def initialize(year, month)
    @year =  year
    @month = month
  end

  def first_day
    beginning_datetime =  Date.new(@year, @month)
    beginning_datetime.prev_day(beginning_datetime.wday)
  end

  def last_day
    end_datetime =  Date.new(@year, @month, -1)
    end_datetime.next_day(6 - end_datetime.wday)
  end

  def to_a
    (first_day..last_day).to_a
  end

  def each
    to_a.each do |date|
      yield date
    end
  end

  def size
    to_a.size
  end

  def each_week
    week_num = (size / 7)

    #to_aメソッドを複数回呼ぶ必要のないように一回呼び出した結果を変数にいれてキャッシュする
    _to_a =  to_a
    week_num.times do |time|
      yield _to_a.slice(time * 7, 7)
    end
  end
end

sm = SpecialMonth.new(2020, 8)

#p sm.first_day
#p sm.last_day
#
#sm.each do |date|
#  p date
#end
#
#p sm.size

sm.each_week do |week|
  p week.map { |date| date.strftime("%Y-%m-%d")}
end