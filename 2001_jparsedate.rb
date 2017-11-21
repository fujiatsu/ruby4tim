require 'time'

def jparsedate(kanTime)
  begin
    pmTime = 0
    if kanTime.include?("午後")
      pmTime = 60 * 60 * 12
      kanTime.slice!("午後")
    else
      kanTime.slice!("午前")
    end
    parseTime = Time.strptime(kanTime, "%Y年 %m月 %d日 %H時 %M分 %S秒") + pmTime
  rescue => ex
    ex.message
  end
end

puts jparsedate("2017年11月9日午後8時17分45秒")
puts jparsedate("2017年11月9日午後8時00分45秒")
puts jparsedate("2017年11月9日午後8時45秒")