require 'date'

class Calendar
  attr_accessor :year, :month

  def initialize(year = Time.now.year, month = Time.now.month)
    @year = year
    @month = month
  end

  def this_year
    (1..12).each_with_object("") { |n, str| str << month_cal(@year, n) }
  end

  def prev_year
    (1..12).each_with_object("") { |n, str| str << month_cal(@year - 1, n) }
  end

  def next_year
    (1..12).each_with_object("") { |n, str| str << month_cal(@year + 1, n) }
  end

  def this_month
    month_cal(@year, @month)
  end
  
  def prev_month
    month_cal(@year, @month - 1)
  end

  def next_month
    month_cal(@year, @month + 1)
  end

  private
    def month_cal(year, month)
      @date = Date.new(year, month, 1)
      cal_header + cal_body
    end

    def cal_header
      @date.strftime("       %m %Y\n") + "Su Mo Tu We Th Fr Sa\n"
    end
    
    def cal_body
      body = " " * (@date.cwday % 7) * 3

      loop_date = @date
      while loop_date.month == @date.month
        body << ( loop_date.saturday? ? loop_date.strftime("%e\n") : loop_date.strftime("%e ") )
        loop_date = loop_date.next_day
      end    

      loop_date.sunday? ? "#{body}\n" : "#{body}\n\n"
    end
end

cal = Calendar.new
puts cal.this_month
