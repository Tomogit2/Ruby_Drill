問題 52 書籍管理アプリケーションの作成2
前回作成したアプリケーションに機能を追加してください

前回までのコード
def register_book(books)
  puts '著者を入力してください'
  author = gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp
  puts '価格を入力してください'
  price = gets.to_i
  book = { author: author, title: title, price: price }
  books << book
end

def show_books(books)
  puts "見たい番号を入力してください"
  index = 1
  books.each do |book|
    puts "#{index}: #{book[:title]}"
    index += 1
  end
  input = gets.to_i
  show_detail(books[input - 1])
end

def show_detail(book)
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end

books = []
while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
   register_book(books)
  when 1
    show_books(books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end
前回までの仕様
プログラムの実行を行うと、

・ [0]を選択した場合は、本の著者、タイトル、価格を入力させ、保存する。
・ [1]を選択した場合は、保存された本の番号とタイトルを出力、選択できるようにする。 表示した番号を選択された場合は、選択された本の著者、タイトル、価格を出力する。
・ [2]を選択した場合は、アプリケーションを終了する。

今回追加する機能
[1]を選択した場合、見たい番号を入力してくださいを出力する前の行に”保存された本の価格の平均”を追加する。

表示例（数値やタイトルは任意）

# 1を選択
平均価格:1100円
見たい番号を入力してください
1: こころ
2: 人間失格

-----------------------------------

def register_book(books)
  puts '著者を入力してください'
  author = gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp
  puts '価格を入力してください'
  price = gets.to_i
  book = { author: author, title: title, price: price }
  books << book
end

def show_books(books)
  total_price = books.sum { |book| book[:price] }
  average_price = total_price / books.size
  puts "平均価格: #{average_price}円"

  puts "見たい番号を入力してください"
  index = 1
  Book_ave = 0
  books.each do |book|
    puts "#{index}: #{book[:title]}"
    Book_ave += book[:price]
    index += 1
  end
  input = gets.to_i
  show_detail(books[input - 1])
end

def show_detail(book)
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end

books = []
while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
   register_book(books)
  when 1
    show_books(books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end