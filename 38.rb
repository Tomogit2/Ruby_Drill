問題 38 rubyの検索問題
以下の配列に任意の値が存在するかどうか、そして何番目に存在するのか、検索するコードを作成しましょう。
添字が0の要素、つまり以下の配列における「1」は「配列の0番目に存在する」と表現します。

array=[1,3,5,6,9,10,13,20,26,31]
任意の値が配列内に存在しない場合は、「値は配列内に存在しません」と表示し、
存在する場合は、配列の何番目にあるかを表示してください。
※本ドリルでは、配列の上限である32以上の値による検索は想定しないものとします。

検索はバイナリーサーチ（2分割検索）を使用して行います。

 バイナリーサーチ
ソート済みのリストや配列に入ったデータ（同一の値はないものとする）に対する検索を行うときに用いられる手法です。まず、中央の値を確認し、検索したい値との大小関係を用いて、検索したい値が中央の値の右にあるか、左にあるかを判断します。それを繰り返し、片側には存在しないことを確かめながら検索していく方法です。

https://tech-master.s3.amazonaws.com/uploads/curriculums//353ef454a5c0be1064c8256f72998bac.png

1回の処理で選択肢が半分になるので、処理速度の向上が期待できます。

出力例：

検索したい数字を入力してください
5
5は配列の2番目に存在します 

検索したい数字を入力してください
7
7は配列内に存在しません
ヒント
まず.lengthメソッドを使用して配列の要素数を取得し、変数number_of_elementsとします。
binary_searchメソッド内で配列の要素数を半分にしたものを変数centerとしましょう。
while文を使用して、当てはまるまで計算を繰り返します。
-------------------------------------------------
def binary_search(array, num)
  low = 0
  high = array.length - 1

  while low <= high
    center = (low + high) / 2

    if array[center] == num
      return center
    elsif array[center] > num
      high = center - 1
    else
      low = center + 1
    end
  end

  return nil
end

puts "検索したい数字を入力してください"
num = gets.to_i

index = binary_search(array, num)
if index
  puts "#{num}は配列の#{index}番目に存在します"
else
  puts "#{num}は配列内に存在しません"
end