Y_Rubyドリル 問題 63 車両管理アプリケーションの作成３
前回作成したアプリケーションに機能を追加しましょう。

前回までのアプリケーション

def register_data(cars)
  puts "車種の入力をして下さい。"
  type = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力して下さい。"
  fuel_economy = gets.to_f
  puts "乗車可能人数を入力して下さい。"
  capacity = gets.to_i
  car = { type: type, fuel_economy: fuel_economy, capacity: capacity }
  cars << car
end

def show_cars(cars)
  cars.each_with_index do |car, index|
    puts "[#{index}]: #{car[:type]}"
  end
  puts "確認したい番号を入力して下さい。"
  input = gets.to_i
  car = cars[input]
  if car
    show_data(car)
  else
    puts "該当する番号はありません。"
  end
end

def show_data(car)
  puts "車種:#{car[:type]}"
  puts "1Lあたりの走行可能距離:#{car[:fuel_economy]}km/l"
  puts "乗車人数:#{car[:capacity]}人"

  puts "これから走る距離(km)を入力して下さい。"
  input_distance = gets.to_f

  calculate_fuel_consumption(car, input_distance)
end

def calculate_fuel_consumption(car, distance)
  fuel_consumption = distance / car[:fuel_economy]
  puts "その目的地までは、ガソリンを#{fuel_consumption.round(1)}L消費します。"
end

cars = []

while true do
  puts "番号を入力して下さい"
  puts "[0]:登録をする"
  puts "[1]:データを確認する"
  puts "[2]:終了する"
  input = gets.chomp

  case input
  when "0"
    register_data(cars)
  when "1"
    show_cars(cars)
  when "2"
    exit
  else
    puts "無効な値です"
  end
end
前回までの仕様
・[0]の処理
1.車種、1Lあたりの走行可能距離(km/l)、乗車人数の入力をユーザーに入力を行って貰う
2.上記の値の保存を行う

・[1]の処理
1.保存した情報から番号と名前で一覧を表示し、見たい車種の番号の入力を求める
2.入力された個別の車種の名前、1Lあたりの走行可能距離(km/l)、乗車人数の表示を行う
3.これから走る距離(km)をユーザーに入力を行って貰う
4.これから走る距離に対して何L(リットル)ガソリンを消費するか出力を行う

・[2]の処理
1.アプリケーションの終了

・[2]でアプリケーションを終了するまで、投稿や閲覧が出来るように繰り返す

追加する仕様
・[1]の処理
入力された乗車人数に対して、あと何人乗ることが出来るのか、何人定員オーバーなのか出力を行う
-------------------------

def register_data(cars)
  puts "車種の入力をして下さい。"
  type = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力して下さい。"
  fuel_economy = gets.to_f
  puts "乗車可能人数を入力して下さい。"
  capacity = gets.to_i
  car = { type: type, fuel_economy: fuel_economy, capacity: capacity }
  cars << car
end

def show_cars(cars)
  cars.each_with_index do |car, index|
    puts "[#{index}]: #{car[:type]}"
  end
  puts "確認したい番号を入力して下さい。"
  input = gets.to_i
  car = cars[input]
  if car
    show_data(car)
  else
    puts "該当する番号はありません。"
  end
end

def show_data(car)
  puts "車種:#{car[:type]}"
  puts "1Lあたりの走行可能距離:#{car[:fuel_economy]}km/l"
  puts "乗車人数:#{car[:capacity]}人"

  puts "これから走る距離(km)を入力して下さい。"
  input_distance = gets.to_f

  calculate_fuel_consumption(car, input_distance)

  puts "乗車人数を入力してください"
  input_capacit = gets.to_i
  calculate_capacit(car, input_capacit)

end

def calculate_fuel_consumption(car, distance)
  fuel_consumption = distance / car[:fuel_economy]
  puts "その目的地までは、ガソリンを#{fuel_consumption.round(1)}L消費します。"
end

def calculate_capacit(car, capacit)
  calculate_capacit = capacit - input_capacit
  if calculate_capacit > 0
    puts "あと#{calculate_capacit}人乗ることが出来ます。"
  else
    puts "#{calculate_capacit.abs}人定員オーバーです。"
  end
end

cars = []

while true do
  puts "番号を入力して下さい"
  puts "[0]:登録をする"
  puts "[1]:データを確認する"
  puts "[2]:終了する"
  input = gets.chomp

  case input
  when "0"
    register_data(cars)
  when "1"
    show_cars(cars)
  when "2"
    exit
  else
    puts "無効な値です"
  end
end