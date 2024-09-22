Y_Rubyドリル 問題 60 クラスの定義問題
クラスを使用して以下の表示結果を出力するコードを記述しましょう。

表示結果
ワンワン
わたしは犬です
わたしの名前はマロンで種類はトイプードルです
仕様
https://tech-master.s3.amazonaws.com/uploads/curriculums//ab8be4f41384925bffeb730e0a17528c.png

 上の表のメソッドの処理で「」で囲まれているの部分はクラス変数、またはインスタンス変数を使って書くということです。

今回作ってもらうプログラムのひな形は以下です。
class Dog
  # ここにクラスの定義を書き加えてください
end

# クラスの外でメソッドを呼び出してください
-----------------------------------------
  class Dog
    type = "犬"
  @name = "マロン"
  @dog_type = "トイプードル"

    def say
      puts "ワンワン"
    end

    def say_type
      puts "私は#{type}です"
    end
    
    def self_introdution
      puts "私の名前は「#{name}で種類は#{@dog_type}です"
    end
    
    say
    say_type
    self_introdution
