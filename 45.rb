問題 45 randメソッド
下記のコードを実行すると変数numにランダムな数字が代入されます。
numが5以上だった場合は「◯は4より大きい！」
4以下だった場合は「 ◯は5より小さい！」
と表示されるよう記述してください。ただし、上記の◯には変数numの値が
入るものとします。

num = rand(10)
ヒント
rand
randは0から指定した数未満の数値をランダムに生成することができます。

num = rand(100)
puts num
=> 32  # 0~99の範囲でランダムな数字が生成された

num = rand(100)
puts num
=> 74  # 0~99の範囲でランダムな数字が生成された
randの詳細は公式リファレンスを確認しましょう。
-------------------------------------------------

num = rand(10)
if num >=5
  puts "#{num}は4より大きい！"
else
  puts "#{num}は5より小さい！"
end