Y_Rubyドリル 問題 69 クラスとインスタンスの問題
カロリー計算のプログラムをつくりましょう。以下のような仕様です。

メニュー画面ではカロリーを入力か、カロリーの合計を見るか選べます
カロリーを入力の場合、料理名とカロリーを入力します
入力後はメニューに戻り、続けてカロリーを入力か、カロリーの合計を見るかを選べます
カロリーの合計を見るを選んだら全ての料理名とカロリーを表示して、最後にカロリーの合計を表示します
カロリーの合計を見たらプログラムを終了します
メニュー画面

ターミナル

[0]:カロリーを入力する
[1]:カロリーの合計を見る
カロリー入力画面

ターミナル

料理名を入力してください:
スパゲティ
カロリーを入力してください:
720
カロリー合計表示画面

ターミナル

-----------------------------
メロンパン  :430kcal
スパゲティ  :720kcal
バナナ  :80kcal
-----------------------------
カロリー合計  :1230kcal
作ってもらうプログラムのひな形は以下です。

question3.rb

  class Food
    # ここにクラスの定義を書き加えてください
  end

  while true do
    puts "[0]:カロリーを入力する"
    puts "[1]:カロリーの合計を見る"
    input = gets.to_i

    if input == 0
      Food.input           # カロリーの入力
    elsif input == 1
      Food.show_all_calory # カロリーの合計を表示
      exit
    end
  end
Foodクラスの中だけ書き加えて、あとはこのひな形の通りに作ってください。
-----------------------------------------

class Food
  @@foods = []
  # ここにクラスの定義を書き加えてください
  def self.input
    puts "料理名を入力してください"
      food_name = gets.chomp
    puts "カロリーを入力してください"
      calory = gets.to_i
    food = {food_name: food_name, calory: calory}
    @@foods <<food
  end

  def show_all_calory
    total_calory = 0
    puts "-----------------------------"
    @@foods.each do |food|
        
    puts "#{food[:food_name]}  :#{food[:calory]}kcal"
    total_calory += food[:calory]
  end
  puts "-----------------------------"  
  puts "カロリーの合計：#{total_calory}kcal"
  end
end

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i

  if input == 0
    Food.input           # カロリーの入力
  elsif input == 1
    Food.show_all_calory # カロリーの合計を表示
    exit
  end
end
