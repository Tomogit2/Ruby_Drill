Y_Rubyドリル 問題 66 成績管理アプリケーションの作成
以下の仕様を満たすアプリケーションを作成しなさい。また、注意書きを必ず読んでから実装に入りなさい。実装の際、注意の下に記載されている雛形を使用しなさい。

仕様
・実行すると [1] : 点数を登録する, [2] : 点数を確認する, [3] : 終了する という選択肢を表示し、ユーザーに入力を求め、その入力に従い以下のような処理を行う
・アプリケーションを終了するまで、処理を繰り返す

[1]の処理
・名前、年齢、国語・数学・英語の3教科の点数を入力させ、保存する

[2]の処理
・投稿された情報から番号と名前で一覧を表示し（例 [1]山田）、見たい個人の番号の入力を求める
・ 入力された個人の名前、年齢、国語・数学・英語の3教科の点数を表示する

[3]の処理
・アプリケーションを終了する

注意
正しく動作している箇所までが採点対象となるため、必ず動作確認しながら進めること
エラーはインターネットで調べるなどして解決すること
エラーが出たままその先の実装をしないこと
引数などは雛形で考慮していないため、必要に応じて引数を設定するなどすること
雛形

def registration_student
  # 生徒の名前と年齢を登録できるようにしなさい
  student = {}
  puts '生徒名を入力してください'
  puts '生徒の年齢を入力してください'

  # 登録した生徒の国語、数学、英語の点数を登録できるようにしなさい
  puts "国語の得点は？"
  puts "数学の得点は？"
  puts "英語の得点は？"
end

def show_student_name
  # 登録された生徒の名前を番号を振って表示しなさい
  puts '見たい生徒の番号を入力してください'

  # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにしなさい
  puts "名前:"
  puts "年齢:"
  puts "国語:"
  puts "数学:"
  puts "英語:"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  if input == 1
    registration_student
  elsif input == 2
    show_student_name
  elsif input == 3
    # アプリケーションを終了させなさい
  else
    puts '無効な値です'
  end
end
ヒント
registration_student メソッド
このメソッドで処理したい内容は下記の通りです。

student というハッシュを定義する
生徒名/生徒の年齢と国語/数学/英語を入力させ、student というハッシュに代入する
students という配列に、先ほど定義した student というハッシュを追加する
必要な知識

gets と chomp
to_i
ハッシュ
配列と配列演算子(<<)
show_student_name メソッド
このメソッドで処理したい内容は下記の通りです。

registration_student で追加した配列の中身を一覧表示する
配列の要素であるハッシュの値を一覧表示させるために、要素番号を入力するように促し、対応する要素を取得する
入力し要素番号のハッシュの値を一覧で表示する
必要な知識

eachメソッド
----------------------------------------

def registration_student
  # 生徒の名前と年齢を登録できるようにしなさい
  student = {}
  puts '生徒名を入力してください'
  name = gets.chomp

  puts '生徒の年齢を入力してください'
  age = gets.to_i

  # 登録した生徒の国語、数学、英語の点数を登録できるようにしなさい
  puts "国語の得点は？"
  japanese = gets.to_i
  
  puts "数学の得点は？"
  math = gets.to_i
  
  puts "英語の得点は？"  
  english = gets.to_i

  student = { name: name, age: age, japanese: japanese, math: math, english: english }
  students << student
end

def show_student_name(students)
  # 登録された生徒の名前を番号を振って表示しなさい
  students.each_with_index do |student, index| 
    puts "[#{index + 1 }] #{student[:name]}"
  end

  puts '見たい生徒の番号を入力してください'
  num = gets.to_i - 1

 if students[num]
  student = students[num]
  # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにしなさい
  puts "名前: #{student [:name]}"
  puts "年齢: #{student [:age]}"
  puts "国語: #{student [:japanese]}"
  puts "数学: #{student [:math]}"
  puts "英語: #{student [:english]}"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  if input == 1
    registration_student
  elsif input == 2
    show_student_name
  elsif input == 3
    # アプリケーションを終了させなさい
    exit
  else
    puts '無効な値です'
  end
end
