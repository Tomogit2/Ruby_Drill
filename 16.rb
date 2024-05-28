実行結果は以下のようになります。

採れたて新鮮な果実です
リンゴは120円です
オレンジは200円です
イチゴは60円です

class Fruit
  
  def クラスメソッド
    apple =[リンゴ, 120]
    orange =[オレンジ, 200]
    strawbery =[イチゴ, 60]

    name = [apple, orange, strawbery]
    price = [120, 200, 60]
  end
 
  def initialize(name, price)
    @name = name
    @price = price

    puts "採れたて新鮮な果実です"    
  end
 
  def introduce (name, price)
    puts "#{name}は#{price}円です"
  end
 end


 3つのインスタンスを生成し、クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示し、インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示したいのですが…もう何があってるか間違ってるのか、そもそもの方向性が違いそうで困っています。

 #模範解答
 class Fruit

  def self.fresh
    puts "採れたて新鮮な果実です"
  end
 
  def initialize(name, price)
    @name = name
    @price = price
  end
 
  def introduce
    puts "#{@name}は#{@price}円です"
  end
 end
 
 apple = Fruit.new("リンゴ", 120)
 orange = Fruit.new("オレンジ", 200)
 strawberry = Fruit.new("イチゴ", 60)
 
 Fruit.fresh
 apple.introduce
 orange.introduce
 strawberry.introduce