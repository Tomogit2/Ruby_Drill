問題 31 2つの文字列の末尾に対して一致・不一致を判断するプログラムの実装
概要
本ドリルでは、2つの文字列の末尾の文字を比較して、一致する場合はTrue、一致しない場合はFalseを出力するプログラムを実装します。

問題
以下の要件を満たすend_otherメソッドを実装しましょう。

メソッドの引数に、任意の2つの文字列を指定する。
引数に指定された2つの文字列のうち、どちらかがもう一方の文字列の末尾にある場合は、Trueを出力する
上記を満たせていない場合は、Falseを出力する
入力された文字が大文字でも小文字でも、同一の文字として処理を行う
雛形

def end_other(a, b)
  # 処理を記述
end

# 呼び出し例
end_other('Hiabc', 'abc') 
出力例
end_other('Hiabc', 'abc') → True
end_other('AbC', 'HiaBc') → True
end_other(‘abc’, ‘HaIoBc’) → False

ヒント
sliceの範囲指定
範囲を指定して要素を切り取る場合は、以下のように記述して使うことができます。

# 要素を定義
array = "Hiabc"

#配列番号（インデックス番号）の-3から-1の範囲の文字列を切り取る
array.slice(-3..-1)
#=> abc
downcase
downcaseメソッドは、大文字を小文字に変換するメソッドです。

ターミナル
# 大文字を含んだ文字列を定義
irb(main):001:0> name = "Hiabc"
=> "Hiabc"

# downcaseメソッドを使用し、小文字に変換
irb(main):002:0> name.downcase
=> “hiabc”
-------------------------------
def end_other(a, b)
  a = a.downcase
  b = b.downcase

  if a.end_with?(b) || b.end_with?(a)
    return true
  else
    return false
  end
end