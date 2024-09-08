問題 42 引数を使いこなそう
問題
ユーザーが数字を2つ渡すと、それらを掛け算した結果を返すプログラムを作ってください。

定義する変数
2つの数字を、それぞれnum1, num2という変数にgetsメソッドを利用して定義してください。

実行結果の例

#デスクトップに移動
$cd Desktop
#Rubyファイルを実行
$ruby argument_test.rb
最初の数字を入力してください
5
2番目の数字を入力してください
6
5と6をかけた答えは30です！
---------------------------------------

puts "最初の数字を入力してください"
num1 = gets.to_i 

puts "2番目の数字を入力してください"
num2 = gets.to_i

def multiply(num1, num2)
  result = num1 * num2
  puts "#{num1}と#{num2}をかけた答えは#{result}です！"
end

multiply(num1, num2)