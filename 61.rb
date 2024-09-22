Y_Rubyドリル 問題 61 車両管理アプリケーションの作成１
以下の仕様を満たすアプリケーションを作成しましょう。

仕様
・プログラムの実行を行うと、
[0]データの登録
[1]データの確認
[2]プログラムの終了
という選択肢を表示し、ユーザーに入力を求め、その入力に従い以下のような処理を行う。

・[0]の処理
1.車種、1Lあたりの走行可能距離(km/l)、乗車人数の入力をユーザーに入力を行って貰う
2.上記の値の保存を行う

・[1]の処理
1.保存した情報から番号と名前で一覧を表示し、見たい車種の番号の入力を求める
2.入力された個別の車種の名前、1Lあたりの走行可能距離(km/l)、乗車人数の表示を行う

・[2]の処理
1.アプリケーションの終了

・[2]でアプリケーションを終了するまで、投稿や閲覧が出来るように繰り返す

注意
正しく動作している箇所までが採点対象となるため、必ず動作確認しながら進めること
エラーはインターネットで調べるなりして解決すること
エラーが出たままその先の実装をしないこと
必要な知識

each_with_index
使用すると、配列のインデックス番号(配列の要素番号)が取得できる
---------------------------------------------
regists = []
puts "[0]データの登録"
puts "[1]データの確認"
puts "[2]プログラムの終了"
puts "選択肢の番号を入力してください"
num = gets.to_i

def registration(num)
  if num == 0
    puts "車種を入力してください"
    shashu = gets.chomp

    puts "1Lあたりの走行可能距離(km/l)を入力してください"
    soukoukanoukyori = gets.to_i

    puts "乗車人数を入力してください"
    joshaninnzu = gets.to_i
    
    regist << { shashu, soukoukanoukyori, joshaninnzu }
  end
end

def kakuninn(num)
  if num == 1
    each do |regist|
      puts {each_with_index, shashu}       
    end
    
    puts "見たい車種の番号を入力してください"
    mitaishashu = gets.to_i
    
    puts "regists [ mitaishashu, shashu, soukoukanoukyori, joshaninnzu ]"
  end
end
