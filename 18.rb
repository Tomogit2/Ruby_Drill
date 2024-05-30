以下の要件を満たす police_troubleメソッドを実装しましょう。

あなたは警官です。aとb二人の容疑者の取り調べをしています。このとき、次のルールで証言の真偽判定を行います。
※問題文で登場したaとb二人の容疑者は、今回実装するpolice_troubleメソッドの引数として取り扱っていきます。

第一引数aと第二引数bどちらの証言も真(true)であれば、Trueを出力すること
第一引数aと第二引数bどちらの証言も偽(false)であれば、Trueを出力すること
第一引数aと第二引数bで証言の真偽が一致しない場合であれば、Falseを出力すること
雛形

def police_trouble(a, b)
  # ここに条件式を記述する
end

# 呼び出し例
police_trouble(true, true) 
police_trouble(false, false)
police_trouble(true, false) 
出力例
police_trouble(true, true) → True
police_trouble(false, false) → True
police_trouble(true, false) → False