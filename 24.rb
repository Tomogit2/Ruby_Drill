def sleep_in(is_weekday, is_vacation)
  if is_vacation == true || is_vacation 
    puts "false"
  elseif is_weekday == false
    puts "true"
end

# 呼び出し例
sleep_in(false, false)

#AIより
def sleep_in(is_weekday, is_vacation)
  if is_vacation || !is_weekday
    true
  else
    false
  end
end