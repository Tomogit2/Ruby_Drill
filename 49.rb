問題 49 任意の文字列に特定の文字列が含まれているかを判別するプログラムの実装
概要
本ドリル問題では、任意の文字列に特定の文字列が含まれているかを判別するプログラムを実装します。

問題
以下の要件を満たすinclude_cat_and_dog?メソッドを実装しましょう。

任意の文字列にcatとdogの文字列が含まれている場合は、Trueを出力する
任意の文字列にcatとdogの文字列が含まれていない場合は、Falseを出力する
雛形

def include_cat_and_dog?(str)
  # 処理を記述
end

# 呼び出し例
include_cat_and_dog?("catdog")
出力例
include_cat_and_dog?("catdog") → True
include_cat_and_dog?("catcat") → False
include_cat_and_dog?("1cat1cadodog") → True

ヒント
include?メソッドを使いましょう。

include?
include?メソッドは、指定した要素が配列または文字列に含まれているかを判定するメソッドです。

string = "abcdefg"
puts string.include?("abc")
# => true

puts string.include?("d")
# => true

puts string.include?("gfe")
# => false
include?メソッドの詳細は公式リファレンスを確認しましょう。

Arrayのinclude?メソッドを使用する場合
Stringのinclude?メソッドを使用する場合
-----------------------------------------

def include_cat_and_dog?(str)
  if str.include?("cat") && str.include?("dog")
    puts "True"
  else
    puts "False"
end

# 呼び出し例
include_cat_and_dog?("catdog")