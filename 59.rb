Y_Rubyドリル 問題 59 戦闘力管理アプリケーションの作成3
前回のドリルで作成したアプリケーションに、戦闘力判定機能を追加しましょう。

前回までのコード

def register_data(data)

  puts '名前を入力してください'
  name = gets.chomp
  puts 'パンチ力を入力してください(0 ~ 100)'
  punch = power(gets.to_i)
  puts 'キック力を入力してください(0 ~ 100)'
  kick = power(gets.to_i)
  puts 'ジャンプ力を入力してください(0 ~ 100)'
  jump = power(gets.to_i)

  person = {name: name, punch: punch, kick: kick, jump: jump}
  data << person

end

def power(power)
    while power > 100
      puts '100以下の数字を入力してください'
        power = gets.to_i
    end
    return power
end

def show_data_list(data)
  puts '見たい人の番号を選択してください'
  data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
  end
  input = gets.to_i - 1
  person = data[input]
  puts "名前: #{person[:name]}"
  puts "パンチ力: #{person[:punch]}"
  puts "キック力: #{person[:kick]}"
  puts "ジャンプ力: #{person[:jump]}"

end

data = []

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end
追加仕様
パンチ力,キック力,ジャンプ力の３つの力の合計を戦闘力とし、hero_rank メソッドを作成してABCDの４段階にランク分けします。（範囲は任意で構いません）

ヒーローランクは、一覧表示で名前,パンチ力,キック力,ジャンプ力と一緒に表示されるようにします。
----------------------------------------------

def register_data(data)

  puts '名前を入力してください'
  name = gets.chomp
  puts 'パンチ力を入力してください(0 ~ 100)'
  punch = power(gets.to_i)
  puts 'キック力を入力してください(0 ~ 100)'
  kick = power(gets.to_i)
  puts 'ジャンプ力を入力してください(0 ~ 100)'
  jump = power(gets.to_i)

  person = {name: name, punch: punch, kick: kick, jump: jump}
  data << person

end

def power(power)
    while power > 100
      puts '100以下の数字を入力してください'
        power = gets.to_i
    end
    return power
end

def show_data_list(data)
  puts '見たい人の番号を選択してください'
  data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
  end
  input = gets.to_i - 1
  person = data[input]
  puts "名前: #{person[:name]}"
  puts "パンチ力: #{person[:punch]}"
  puts "キック力: #{person[:kick]}"
  puts "ジャンプ力: #{person[:jump]}"

end

data = []

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end

def hero_rank(data)
  sentoryoku = ({person[:punch]} + person[:kick] + {person[:jump]
  if sentoryoku >= 400
    rank = "A"
  elsif sentoryoku >= 300, sentoryoku < 400
    rank = "B"
  elsif sentoryoku >= 200, sentoryoku < 300
    rank = "C"
  else
    rank = "D"
  end

  puts 'ヒーローランク'
  data.each_with_index do |person, index|
    puts "名前: #{person[:name]}"
    puts "パンチ力: #{person[:punch]}"
    puts "キック力: #{person[:kick]}"
    puts "ジャンプ力: #{person[:jump]}"
end