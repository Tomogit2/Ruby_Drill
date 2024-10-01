九九の掛け算表を出力するプログラム
(1..9).each do |i|
  (1..9).each do |j|
    print "#{i} * #{j} = #{i * j}\t"  # 各計算結果をタブで区切って出力
  end
  puts  # 各行の終わりで改行
end
