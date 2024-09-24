Y_Rubyドリル 問題 64 日付と曜日を出力する
今日の日付と曜日を出力するコードを作りましょう

出力例：
現在は西暦2020年5月27日（今日の日付が入ります）
水曜日です（今日の曜日が入ります）

ヒント
Time.newメソッドを使用しましょう

 Timeクラス
TimeクラスはRubyの標準ライブラリにあり、時刻を表すクラスです。
以下のように利用します。

# 現在時刻
now = Time.new
puts now
----------------------------------------

now = Time.new
formatted_time = now.strftime("西暦%Y年%-m月%-d日")
formatted_time_yobi = now.strftime("%A")

puts "現在は#{formatted_time}"
puts "#{formatted_time_yobi}です"

