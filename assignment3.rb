# ASSIGNMENT 3
# Create a calculator application which can perform add, sub, division and multiplication operation. Add exception handling for operations like divide which handles ZeroDivisionError exception printing some user friendly message. Add a method in this calculator which takes a number as argument and returns:
# “positive” - if number is positive
# “negative” - if number is negative
# nil - if number is 0

class Calculator
   def initialize(a,b)
      @a = a
      @b = b
   end
   def add
     c = @a + @b
     "addition of #{@a} and #{@b} is #{c}"
   end
   def sub
     c = @a - @b
     "substraction of #{@a} and #{@b} is #{c}"
   end
   def mul
     c = @a * @b
     "multiplication of #{@a} and #{@b} is #{c}"
   end
   def division
     begin
       c = @a / @b
       "division of #{@a} and #{@b} is #{c}"
     rescue ZeroDivisionError => e
      "#{e.class}: #{e.message}"
     end
   end
  end

class Argument
  def initialize argument
    @argument = argument
  end
  def check_number
    begin
     if @argument > 0
       "positive"
     elsif @argument < 0
       "negative"
     elsif @argument == 0
      nil
     end
    rescue ArgumentError => ee
      "Invalid Input"
    end
  end
end

cal1 = Calculator.new(2,2)
cal2 = Calculator.new(12,0)

cal1.add
cal1.sub
cal1.mul
cal1.division
cal2.division

arg1 = Argument.new "test"
puts arg1.check_number

