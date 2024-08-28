問題 30 FizzBuzz問題応用
問題.1
FizzBuzzという言葉遊びがあります。1から数を数えていく際に、それが3の倍数だったら「Fizz」, 5の倍数だったら「Buzz」と言う、というものです。ただし、15の倍数の時は「FizzBuzz」と言います。

例） 1, 2, Fizz, 4, Buzz, Fizz ,,,,

このFizzBuzzを再現できるメソッドを作成してください。
ただし、いくつまでカウントするか、引数で指定できるものとします。

雛形
def fizzbuzz(max_num)
  if 

  elsif

  elsif

  else

  end
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)
ヒント
 範囲を指定して繰り返し
範囲を指定して繰り返しをする場合は、範囲演算子(..)を使用しましょう。
以下のように使用します。

(開始する値..終了する値）
具体的には以下のように使用できます。

# 1～6までの範囲を指定して、繰り返し表示
(1..6).each do |num|
  puts num
end
-----------------------------------------
def fizzbuzz(max_num)
  (1..max_num).each do |num|

  if num % 15 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num
  end
  end
  end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)

  
 