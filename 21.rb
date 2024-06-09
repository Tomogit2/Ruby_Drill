第一引数にオウムが鳴く場合はtrueを指定し、鳴かないfalseを指定する
第二引数には時間を指定する（ただし、「分」は考えないものとする）
20時から翌朝7時までの間にオウムが鳴いた場合は「NG」と出力する（20時と7時は含まれない）
上記以外の場合は「OK」と出力する
雛形

def parrot_trouble(talking, hour)
  if talking = true && hour = 21, 22, 23, 24, 0, 1, 2, 3, 4, 5, 6
    talkingjudge = NG
  else talkingjudge = OK
end
 puts parrot_trouble(true, 6)

# 呼び出し例
parrot_trouble(true, 6)
出力例
parrot_trouble(true, 6) → NG
parrot_trouble(true, 7) → OK
parrot_trouble(false, 6) → OK
parrot_trouble(false, 7) → OK

def parrot_trouble(talking, hour)
  if talking == true && (hour < 7 || hour > 20)
    "NG"
  else 
    "OK"
  end
end

puts parrot_trouble(true, 6) 