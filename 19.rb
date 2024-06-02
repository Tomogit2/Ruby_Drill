文字数を算出するプログラムの実装
対象となる文字列から特定の文字列の数を算出し、その数を出力するプログラムを実装
以下の要件を満たすcount_hiメソッドを実装しましょう。

対象となる文字列の中から、"hi"という特定の文字列の数を取得すること
上記で取得した数を出力すること

str = "abc hi ho"
def count_hi(str)
  count = str.scan("hi").length
  puts count
end


count_hi(str)
# 呼び出し例（引数には対象となる文字列を指定します）
count_hi('abc hi ho')
出力例：
count_hi('abc hi ho') → 1
count_hi('ABChi hi') → 2
count_hi('hihi') → 2