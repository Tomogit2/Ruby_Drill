def search(target_num, input)
  # 処理を記述
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]

input.each_with_index do |item, i|
 if
  puts "#{i}番目にあります"
 elsif
  puts "その数は含まれていません"
 end


 def search(target_num, input)

  input.each_with_index do |num, index|
    if num == target_num
      puts "#{index + 1}番目にあります"
      return
    end
  end
  puts "その数は含まれていません"
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
search(11, input)