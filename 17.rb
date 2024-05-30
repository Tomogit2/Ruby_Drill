以下の要件を満たすmissing_charメソッドを実装しましょう。

対象となる文字列からn番目の文字を削除すること
削除された文字以外の文字列を出力すること
def missing_char(str, n)
  # 処理を記述
end

# 呼び出し例（1つ目の引数には対象となる文字列を、2つ目の引数には対象となる文字列から何番目の文字を削除するのかを指定しましょう）
def missing_char(str, n)

string = "abcdefg"
string.slice!(2)

puts string
end

#模範解答

def missing_char(str, n)
  str.slice!(n - 1)
  puts str
end

# 呼び出し例
missing_char('kitten', 1)