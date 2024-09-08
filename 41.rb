問題 41 if,else問題
問題.1
3つの整数a、b、cが与えられた場合に以下条件を満たすメソッドを作成しましょう。

・aとbの差が1かつbとcとの差が2以上の場合「True」と出力する
・aとcの差が1、かつbとcとの差が2以上の場合「True」と出力する
・それ以外は「False」と出力する

以下の雛形を参考にしましょう。

def close_far(a,b,c)
  x = aとbの差
  y = aとcの差
  z = bとcの差

  if (aとbの差が1かつbとcとの差が2以上の場合)
    puts "True"
  elsif (aとcの差が1かつbとcとの差が2以上の場合)
    puts "True"
  else
    puts "False"
  end
end

close_far(整数,整数,整数)
出力例：
close_far(1, 2, 10) → True
close_far(1, 2, 3) → False
close_far(4, 1, 3) → True

ヒント
返り値を整数に変換する際はabsメソッドを使いましょう。

abs
対象となる数値に対して「abs」メソッドを実行すると絶対値を取得することができます。すなわち正の数の場合はそのままですが負の数の場合は符号を取って正の数にした数値が取得できます。

実際の使い方は次のようになります。

num = 5.abs
#=> 5

num = (-5).abs
#=> 5
-------------------------------------------

def close_far(a,b,c)
  x = (a - b).abs
  y = (a - c).abs
  z = (b - c).abs

  if x == 1 && z >= 2
    puts "True"
  elsif y == 1 && z >= 2
    puts "True"
  else
    puts "False"
  end
end

close_far(整数,整数,整数)