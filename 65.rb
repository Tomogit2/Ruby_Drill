Y_Rubyドリル 問題 65 じゃんけん問題
プログラムとじゃんけんをするプログラムを作ってください。

また、じゃんけんの結果によって以下のように処理を変えます。

勝った場合 "あなたの勝ちです"と表示させる
負けた場合 "あなたの負けです"と表示させる
あいこの場合 "あいこで"と表示させたあともう一度じゃんけんをさせる
プログラムの実行
ターミナル

最初はグー、じゃんけん...
[0]:グー
[1]:チョキ
[2]:パー
# 入力待ち
出す手を入力したあと(勝った場合)
ターミナル

最初はグー、じゃんけん...
[0]:グー
[1]:チョキ
[2]:パー
0
あなたの手:グー, わたしの手:チョキ
あなたの勝ちです
出す手を入力したあと(あいこの場合)
ターミナル

最初はグー、じゃんけん...
[0]:グー
[1]:チョキ
[2]:パー
0
あなたの手:グー, わたしの手:グー
あいこで
[0]:グー
[1]:チョキ
[2]:パー
# 入力待ち
雛形

 def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

  # ターミナルからじゃんけんの手を入力
  player_hand = 

  # 乱数でプログラム側の手を決定
  program_hand = 

  jankens = ["グー", "チョキ", "パー"]

  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

  # あいこの判定はplayer_handとprogram_handの値が等しいとき
  if 
    puts "あいこで"
    # 返り値を返す

 # じゃんけんに勝つパターンを全て並べる
  elsif
    puts "あなたの勝ちです"
   # 返り値を返す

  else
    puts "あなたの負けです"
    # 返り値を返す

  end
end

next_game = true

puts "最初はグー、じゃんけん..."

while next_game do
# jankenメソッドの返り値をnext_gameに代入
end
ヒント
乱数の作り方
ヒントとして、乱数の作り方を教えます。乱数を使うとプログラムの出す手をランダムにすることができます。

  rand(欲しい乱数の数)
randメソッドを使うと手軽に乱数を生成できます。randメソッドに引数として数を渡すと「0」から「渡した数 - 1」の間でランダムに数を返します。

  rand(100) # => 0〜99の中から１つ数字をランダムに返す
これを使えばランダムにじゃんけんの手を出すことができます。
-----------------------------------------------------

def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

  # ターミナルからじゃんけんの手を入力
  player_hand = gets.to_i

  # 乱数でプログラム側の手を決定
  program_hand = rand(3)

  jankens = ["グー", "チョキ", "パー"]

  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

  # あいこの判定はplayer_handとprogram_handの値が等しいとき
  if player_hand == program_hand
    puts "あいこで"
    return true
    # 返り値を返す

 # じゃんけんに勝つパターンを全て並べる
  elsif (player_hand == 0 && program_hand == 1) || 
        (player_hand == 1 && program_hand == 2) || 
        (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    return false
   # 返り値を返す

  else
    puts "あなたの負けです"
    return false
    # 返り値を返す
  end
end

next_game = true

puts "最初はグー、じゃんけん..."

while next_game do
  next_game = janken
# jankenメソッドの返り値をnext_gameに代入
end
