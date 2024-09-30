Y_Rubyドリル 問題 70 曜日問題
ある年、ある月、ある日の曜日を取得しましょう。曜日は月曜日なら「月」、火曜日なら「火」というように表示してください。　

本ドリルでは、西暦1年1月1日は月曜日とします。
閏年を考えることもヒントの１つです。

雛形
作ってもらうプログラムのひな形は以下です。

  def get_week(year, month, day)
    # ここに処理を書き加えてください
  end

  puts "年を入力してください："
  year = gets.to_i
  puts "月を入力してください："
  month = gets.to_i
  puts "日を入力してください："
  day = gets.to_i

  week = get_week(year, month, day)
  puts "#{year}年#{month}月#{day}日は#{week}曜日です"

  ------------------------------------

# 閏年かどうかを判定するメソッド
def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

# 各月の日数（平年と閏年の違いを考慮）
def days_in_month(year, month)
  days = [31, leap_year?(year) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  return days[month - 1]
end

# 西暦1年1月1日からの経過日数を計算
def get_week(year, month, day)
  weeks = ["月", "火", "水", "木", "金", "土", "日"]
  
  total_days = 0

  # 1年からyear-1年までの日数を足す
  (1...year).each do |y|
    total_days += leap_year?(y) ? 366 : 365
  end

  # year年の1月からmonth-1月までの日数を足す
  (1...month).each do |m|
    total_days += days_in_month(year, m)
  end

  # その月の1日からday日までの日数を足す
  total_days += day - 1

  # 経過日数を7で割って余りから曜日を計算
  return weeks[total_days % 7]
end

# ユーザー入力
puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i
puts "日を入力してください："
day = gets.to_i

week = get_week(year, month, day)
puts "#{year}年#{month}月#{day}日は#{week}曜日です"
