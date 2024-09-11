問題 48 クラスとインスタンス

以下の仕様にしたがってコードを記述してください。

・Personクラスはプロパティ name, ageを持っている。
・StudentクラスはPersonクラスを継承している。
・Studentクラスにはintroduceメソッドが定義されている。実行すると
　「私の名前は◯◯です。◯歳です」と表示がされる。
・Studentクラスのインスタンスを作成し、introduceメソッドを実行する。

ヒント
 クラスの継承
クラスの継承を活用すると、利用したいすべてのクラスを最初から作成することなく、共通する部分を受け継ぐことができます。
以下のように使用します。

class クラス名 < 継承したいクラス名（親クラス）

end
具体的には以下のように使うことができます。

class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def name
    puts "名前は#{@name}です。"
  end
end

pochi = Dog.new("ポチ")
pochi.name
ここでAnimalとDogの2つのクラスがあります。DogクラスはAnimalクラスの共通する部分を受け継ぎたいので、Dog < Animalとしました。これによってpochi.nameでメソッドを呼び出したときに、問題なく@nameにアクセスが可能になりました。
---------------------------------------------

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

clasaa Student < Person
  def introduce
    puts "私の名前は#{name}です。#{age}歳です"
  end
end

student = Student.new("太郎", 20)
student.introduce
