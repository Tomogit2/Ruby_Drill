問題 40 任意の文字列から特定の連続する文字列を検知するプログラムの実装
概要
本ドリル問題では、任意の文字列から特定の連続する文字列を探し、その直前の値により「True」または「False」を出力するプログラムを実装します。

問題
以下の要件を満たすxyz_thereメソッドを実装しましょう。

任意の文字列から連続する文字列"xyz"を探し、その直前にピリオド（.）がない場合はTrueを出力する
任意の文字列から連続する文字列"xyz"を探し、その直前にピリオド（.）がある場合はFalseを出力する
上記2つの条件に当てはまらない場合はFalseを出力する
雛形

def xyz_there(str)
  # 処理を記述
end

# 呼び出し例
xyz_there('abcxyz')
出力例
xyz_there('abcxyz') → True
xyz_there('abc.xyz') → False
xyz_there('xyz.abc') → True
xyz_there('azbycx') → False
xyz_there('a.zbycx') → False

ヒント
include?メソッドを使いましょう。

include?
include?メソッドは、指定した要素が配列または文字列に含まれているかを判定するメソッドです。

str = "foobar"
puts str.include?("bar")
#=> true
puts str.include?("hoge")
#=> false
include?メソッドの詳細は公式リファレンスを確認しましょう。

Arrayのinclude?メソッドを使用する場合
Stringのinclude?メソッドを使用する場合
------------------------------------------

def xyz_there(str)
  if str.include?(".xyz")
    puts "True"
  else
    puts "False"
end

# 呼び出し例
xyz_there('abcxyz')

-----------------------------------------------
#Excelでやろうとしたら
#=IF(ISNUMBER(FIND(".xyz", A1)), FALSE, IF(ISNUMBER(FIND("xyz", A1)), TRUE, FALSE))
