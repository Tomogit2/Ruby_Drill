問題 51 書籍管理アプリケーションの作成1
以下の仕様を満たすアプリケーションを作成してください。
実装の際、注意の下に記載されている雛形を使用してください。

仕様
プログラムの実行を行うと、

・ [0]を選択した場合は、本の著者、タイトル、価格を入力させ、保存する。
・ [1]を選択した場合は、保存された本の番号とタイトルを出力、選択できるようにする。 表示した番号を選択された場合は、選択された本の著者、タイトル、価格を出力する。
・ [2]を選択した場合は、アプリケーションを終了する。

注意
・正しく動作している箇所までが採点対象となるため、必ず動作確認しながら進めること。
・エラーはインターネットで調べるなりして解決すること。
・エラーが出たままその先の実装をしないこと。

雛形
def register_book
  # 本の著者、タイトル、価格をユーザーに入力させ、保存する
  puts '著者を入力してください'
  puts 'タイトルを入力してください'
  puts '価格を入力してください'

  book = { author: author, title: title, price: price }

end

def show_books(books) 
  puts "見たい番号を入力してください"
  # 保存された本の一覧を出力する
end

def show_detail
  # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end


while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
    # 本の登録を行う
  when 1
    # 保存された本の一覧を出力する
  when 2
    exit
  else
    puts '無効な値です'
  end
end
ヒント
必要な知識

gets と chomp
to_i
ハッシュ
配列と配列演算子(<<)
実引数と仮引数
eachメソッド
-----------------------------------------------

def register_book
  # 本の著者、タイトル、価格をユーザーに入力させ、保存する
  puts '著者を入力してください'
  author = gets.chomp

  puts 'タイトルを入力してください'
  title = gets.chomp

  puts '価格を入力してください'
  price = gets.chomp

  book = { author: author, title: title, price: price }
  books << book
  puts "本を登録しました"
end

def show_books(books)
  if books.empty?
    puts "本が登録されていません。"
  else
    puts "見たい番号を入力してください"
    # 保存された本の一覧を出力する
    books.each_with_index do |book, index|
      puts "#{index}: #{book[:title]}"
    end
  end
end

def show_detail
  # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
  puts "表示したい番号を選択してください"
  num = gets.to_i

  book = books[num]

  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end


while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"

  case gets.to_i
  when 0
    # 本の登録を行う
    register_book(books) 
  when 1
    # 保存された本の一覧を出力する
    show_books(books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end