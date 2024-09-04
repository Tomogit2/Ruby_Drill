問題 37 配列に格納された数値の合計値を算出するプログラムの実装
概要
本ドリル問題では、配列に格納された3つの数値の合計を算出するプログラムを実装します。

問題
以下の要件を満たすlone_sumメソッドを実装しましょう。

配列に格納された3つの数値の合計を出力する
ただし、同じ数値が2つ以上含まれている場合、その数値は合計する要素に含めない
雛形

def lone_sum(ary)
  # 処理を記述
end

# 呼び出し例
lone_sum([1, 2, 3])
出力例
lone_sum([1, 2, 3]) → 6
lone_sum([3, 2, 3]) → 2
lone_sum([3, 3, 3]) → 0
------------------------------

def lone_sum(ary)
  # 配列内の各要素の出現回数を計算
  counts = Hash.new(0)
  ary.each do |num|
    counts[num] += 1
  end
  
  # 出現回数が1回だけの数値を合計する
  sum = 0
  counts.each do |num, count|
    sum += num if count == 1
  end
  
  # 合計を返す
  sum
end

# 呼び出し例
puts lone_sum([1, 2, 3])    # => 6
puts lone_sum([3, 2, 3])    # => 2
puts lone_sum([3, 3, 3])    # => 0
