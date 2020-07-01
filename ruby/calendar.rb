require 'date'

def calendar(year = Time.now.year, month = Time.now.month)
  date = Date.new(year, month, 1)

  puts date.strftime("       %m %Y")
  puts "Su Mo Tu We Th Fr Sa"
  (date.cwday % 7).times { print "   " }
  
  while date.month == month
    print date.saturday? ? date.strftime("%e\n") : date.strftime("%e ")
    date = date.next_day
  end
  
  print date.sunday? ? "\n" : "\n\n"
end

12.times { |n| calendar(Time.now.year, n+1) }
