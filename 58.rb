Y_Rubyドリル 問題 58 戦闘力管理アプリケーションの作成2
前回のドリルで作成したアプリケーションに、データの登録、呼び出し機能を追加しましょう。

前回までのコード

def register_data
  puts '名前を入力してください'
  puts 'パンチ力を入力してください(0 ~ 100)'
  puts 'キック力を入力してください(0 ~ 100)'
  puts 'ジャンプ力を入力してください(0 ~ 100)'

end

def show_data_list
  puts '見たい人の番号を選択してください'
end

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data
  elsif input == 1
    show_data_list
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end

仕様
・def register_dataメソッドで情報を入力させ、ハッシュに格納したあと、配列に格納するコードを書きましょう。
　登録する情報は、名前,パンチ力,キック力,ジャンプ力です。
　力は1~100までの数値で入力させます。
　1~100以外の値が入力された場合は”100以下の数字を入力してください”と表示し、入力フェーズに戻るようにします。
・show_data_listメソッドで、登録した情報から名前だけを取り出して一覧表示させましょう。

表示例

見たい人の番号を選択してください
1: 山田
2: 佐藤
3: 佐々木
番号が入力されたら、名前,パンチ力,キック力,ジャンプ力を一覧表示します。
--------------------------------------------------

@sentoryoku_data = []

def register_data
  puts '名前を入力してください'
  name = gets.chomp

  puts 'パンチ力を入力してください(0 ~ 100)'
  panch = gets.to_i

  puts 'キック力を入力してください(0 ~ 100)'
  kick = gets.to_i

  puts 'ジャンプ力を入力してください(0 ~ 100)'
  jump = gets.to_i
  
  if panch > 100 || kick > 100 || jump > 100
    puts "100以下の数字を入力してください"
    self.register_data
  end

  sentoryoku = { name: name, panch: panch, kick: kick, jump: jump }
  @sentoryoku_data << sentoryoku
end

def show_data_list
  puts '見たい人の番号を選択してください'
  index = gets.to_i

  @sentoryoku_data.each_with_index do |sentoryoku, index|
    puts "#{index + 1}: #{sentoryoku[:name]}"
  end

  input = gets.to_i - 1
  show_data(@sentoryoku_data[input])
end

def show_data(sentoryoku)
  puts "名前: #{sentoryoku[:name]}"
  puts "パンチ力: #{sentoryoku[:panch]}"
  puts "キック力: #{sentoryoku[:kick]}"
  puts "ジャンプ力: #{sentoryoku[:jump]}"
end

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data
  elsif input == 1
    show_data_list
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end 