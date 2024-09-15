Y_Rubyドリル 55 健康管理アプリケーションの作成2
前回のドリルで作成したアプリケーションに、機能を追加していきましょう。

前回までのコード
def register_data
  puts "データの登録"
end

def show_data
  puts "データの確認"
end

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data
  elsif input == 1
   show_data
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end
前回までの仕様
・実行すると [0] : 登録する, [1] : データを確認する, [2] : 終了する という選択肢を表示し、ユーザーに入力を求め、その入力に従い以下のような処理を行う。
・ [0]の処理
　データの登録という文字列を表示させる
・ [1]の処理
　データの閲覧という文字列を表示させる
・ [2]の処理
　 アプリケーションを終了する
・ [2]でアプリケーションを終了するまで処理を繰り返す
・選択肢以外の値を入力された場合の処理
　無効な値ですと表示し、再度選択肢を表示する

追加機能
・[0]の処理
ユーザーに名前、年齢、身長（m単位）、体重の入力を求め、
ハッシュと配列を使ってデータを登録する
（前回表示させていた文字列は削除してください）
・ [1]の処理
登録したデータから名前を一覧で出力し、見たい人の番号を選択してもらう
選択された番号のデータ（名前、年齢、身長、体重）を一覧で出力する
（前回表示させていた文字列は削除してください）

出力例
見たい人の番号を選択してください
1:山田
2:佐藤
3:鈴木
1  (#1を選択)
名前:山田
年齢:19
身長:1.7
体重:60.0
---------------------------------------------

@register_datas = []

def register_data
  puts "名前を入力してください："
  name = gets.chomp

  puts "年齢を入力してください："
  age = gets.to_i

  puts "身長（m単位）を入力してください："
  tall = gets.to_f

  puts "体重を入力してください："
  weight = gets.to_f

 data = { name: name, age: name, tall: tall, weight: weight }
  @register_datas << data
end

def show_data
  puts "見たい人の番号を選択してください。"
  @register_datas.each_with_index do |data, index|
    puts "#{index + 1}: #{data[:name]}"   
end

input = gets.to_i

selected_data = @register_datas[input - 1]
    puts "名前: #{selected_data[:name]}"
    puts "年齢: #{selected_data[:age]}"
    puts "身長: #{selected_data[:tall]}m"
    puts "体重: #{selected_data[:weight]}kg"
end

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data
  elsif input == 1
   show_data
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end