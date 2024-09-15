Y_Rubyドリル 54健康管理アプリケーションの作成1
以下の仕様を満たすアプリケーションの雛形を作成しましょう。

仕様
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

雛形
def register_data
  # データの登録という文字列を表示させる
end

def show_data
  # データの確認という文字列を表示させる
end

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    # データの登録と出力するための関数を呼ぶ
  elsif input == 1
    # データの確認と出力するための関数を呼ぶ
  elsif input == 2
    # アプリケーションを終了させる
  else

  end
end
------------------------------------

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