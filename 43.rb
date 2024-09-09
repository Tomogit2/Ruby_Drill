問題 43 クラスとインスタンスを利用したプログラム
以下の条件を満たすコードを記述してください。

・Bookクラスを作成する
・Bookクラスは@titleと@priceをプロパティとして持っている
・attr_readerを使用する
・Bookクラスのインスタンスを作成する（タイトル、価格は任意）
・作成したインスタンスから、タイトルと価格を取得し画面に表示させる。

ヒント
attr_reader
attr_readerメソッドは、インスタンス変数を呼び出すメソッドを定義するメソッドです。主に記述する量を減らすために使われます。

例えば以下の2つのクラスの書き方は、全く同じ結果になります。

attr_readerを使用しない場合

class Dog
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end

dog = Dog.new("ポチ")
puts dog.name
attr_readerを使用した場合
上記ではnameメソッドを作成してインスタンス変数@nameにアクセスしましたが、下記のように簡易的に書くことができます。

class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

dog = Dog.new("ポチ")
puts dog.name
---------------------------------

class Book
  attr_reader :title
  attr_reader :price

  def initialize(title, price)
    @title = title
    @price = price
  end
end

book = Book.new("タイトル", 2500)
puts "タイトル: #{book.title}"
puts "価格: #{book.price}円"
