問題 29 FizzBuzz問題
FizzBuzz問題
非常に有名なプログラミングの問題です。1〜100までの数字をターミナルに出力してください。ただし、「3の倍数」のときは数字の代わりに文字列でFizzと、「5の倍数」のときはBuzz、両方の倍数である「15の倍数」のときはFizzBuzzと出力してください。

作ってもらうプログラムのひな形は以下です。

question1.rb
  def fizz_buzz
    # ここに処理を書き加えてください
  end

  fizz_buzz
ヒント
① 以下の4つに条件を分岐しましょう

値が15の倍数である
値が3の倍数である
値が5の倍数である
上の3つの条件のどれにもあてはまらない
②「〇〇の倍数」を導き出す時は剰余演算子を用いましょう

③条件を指定して繰り返し処理をする場合は、whileというメソッドを使いましょう
-------------------------------------------------
def fizz_buzz
n = 1
while n <= 100

if n % 15 == 0
  puts "FizzBuzz"
elsif n % 3 == 0
  puts "Fizz"
elsif n % 5 == 0
  puts "Buzz"
else
  puts n
end
n += 1
end
end

fizz_buzz