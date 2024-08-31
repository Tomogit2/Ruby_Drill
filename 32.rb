問題 32 クラスとインスタンスを使って実装してみよう

以下のプログラムを実行するとエラーが起きます。
①エラーが起きた原因
②正しいソースコード
をそれぞれ答えてください。

実行したプログラム
class Student
  def set_name(name)
    @name = name
  end

  def self.introduce
    puts "私の名前は#{@name}です。"
  end
end

student = Student.new
student.set_name("山田太郎")
student.introduce
----------------------------------------
①エラーが起きた原因
クラスメソッドではインスタンス変数にアクセスすることができないため。

②正しいソースコード

class Student
  def set_name(name)
    @name = name
  end

  def introduce
    puts "私の名前は#{@name}です。"
  end
end

student = Student.new
student.set_name("山田太郎")
student.introduce