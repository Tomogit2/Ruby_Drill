問題 36 預金システムのアルゴリズム問題
以下の条件を達成するプログラムを実装しなさい

銀行口座に10万円の預金残高があり、お金を引き出すプログラムを作成します。
・お金を引き出すwithdrawメソッドを作成する
・お金を引き出すと手数料110円かかり、「◯◯円引き落としました。残高は◯◯円です」と表示する（残高は手数料を引いた額を表示します）
・もし預金残高より多く引き落としたら「残高不足です」と表示する
・以下にヒントを用意するので参考にしてください

def withdraw(balance, amount)
  fee = 110　　# 手数料
# 引き落とし額と残高を表示する、もしくは残高より多く引き落としたら残高不足と表示
end

balance = 100000　　# 残高
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)
----------------------------------

def withdraw(balance, amount)
  fee = 110　　# 手数料
# 引き落とし額と残高を表示する、もしくは残高より多く引き落としたら残高不足と表示
if balance >= amount + fee
  balance -= amount + fee
  puts "#{amount}円引き落としました。残高は#{balance}円です"
else
  puts "残高不足です"
end

balance = 100000　　# 残高
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)