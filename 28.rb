問題 28 if,else問題
ECサイトのポイント付与サービスを考えます。
購入金額が999円以下の場合、3%のポイント
購入金額が1000円以上の場合、5%のポイント
このように付与されるポイントを出力するメソッドを作りましょう。

ただし誕生日の場合はポイントが5倍になります。
誕生日の場合はtrue, 誕生日でない場合はfalseで表します。
また、小数点以下をすべてのポイント計算が終わったあとに切り捨てましょう。

ヒント：
小数点の切り捨ては、.floorメソッドを用います。

irb(main):001:0> 3.1.floor
=> 3
irb(main):002:0> 3.9.floor
=> 3
呼び出し方：
calculate_points(amount, is_birthday)

出力例：
calculate_points(500, false) → ポイントは15点です
calculate_points(2000, false) → ポイントは100点です
calculate_points(3000, true) → ポイントは750点です

-----------------------------------------------------
def amount_level
  if amount =< 999
    points = amount * 0.03
   else
    points = amount * 0.05
end

def calculate_points(amount)
  puts "ポイントは#{amount_level.floor}点です"
end
-----------------------------------------------------
修正済みのコード
def calculate_points(amount, is_birthday)
  if amount <= 999
    points = amount * 0.03
  else
    points = amount * 0.05
  end

  # 誕生日の場合、ポイントを5倍にする
  points *= 5 if is_birthday

  # 小数点以下を切り捨てる
  points = points.floor

  # 結果を出力
  puts "ポイントは#{points}点です"
end
