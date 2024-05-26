以下の要件を満たす in1to10メソッドを実装しましょう。

第一引数のnumが1以上かつ10以下の範囲であればTrueを出力すること
第二引数のoutside_modeがTrueの場合は、第一引数numが条件範囲外でもTrueを出力すること
それ以外はFalseを出力すること

def in1to10(num, outside_mode)
  if (num >= 1 && num <= 10) || outside_mode
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
in1to10(5,false)
in1to10(11,false) 
in1to10(11,true) 

出力例
in1to10(5,false) →True
in1to10(11,false) →False
in1to10(11,true) →True