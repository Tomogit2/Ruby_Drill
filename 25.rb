もしも3桁以上の数値でも各桁の数値を取り出す必要がある場合には、数値を文字列に変換してから各桁を取り出す方法があります。
number = 1234
digits = number.to_s.chars.map(&:to_i)
# 結果：[1, 2, 3, 4] 


def addition(a, b)
  # 10の位と1の位の数字に対して、足し算を行う
  add_result = a + b
end

def multiplication(a,b)
  # 10の位と1の位の数字に対して、掛け算を行う
  ultiple_result = a * b
end

def slice_num(num)
  # 10の位の計算

  # 1の位の計算
  digits = input.to_s.chars.map(&:to_i)
  a = digits[digits.length]
  b = digits[digits.length - 1]
  
end

puts "二桁の整数を入力してください"
input = gets.to_i

X, Y = slice_num(input)
#  additionメソッドにX,Yを引数として渡し、処理結果を変数add_resultに代入する。
add_result = addition(X, Y)

#  multiplicationメソッドにX,Yを引数として渡し、処理結果を変数multiple_resultに代入する。
multiple_result = multiplication(X, Y)
puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"