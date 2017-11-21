require 'date'

def calender
  now = Date.today
  year = now.year
  month = now.month
  fDay = Date.new(year,month,1)
  lDay = (fDay >> 1) -1

  wdHeader = "\sSu Mo Tu We Th Fr Sa"
  calHeader = "\s\s\s\s\s\s\s" + fDay.strftime("%b") + "\s" + fDay.year.to_s

  puts calHeader
  puts wdHeader
  wdLine = ""
  1.upto(lDay.day) do |day|
    if wdLine.size >= wdHeader.size
      puts wdLine
      wdLine = ""
    end
    if day == 1
      wdLine = "\s" * 3 * fDay.wday + "\s\s" + day.to_s
    elsif day == lDay.day
      wdLine += "\s#{day.to_s}"
      puts wdLine
    else
      if day < 10
        wdLine += "\s\s#{day.to_s}"
      else
        wdLine += "\s#{day.to_s}"
      end
    end
  end
end

calender
