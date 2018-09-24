#variable ca't be assign in class, it should be always assign in initialize method
#Swap
#a, b = b, a
#Swapping with third variable
class Swap
def initialize
  @a = 10
  @b = 20
end
def swap
  temp = @a
  @a = @b
  @b = temp
end
def swap_value
    puts "a = #{@a}"
    puts "b = #{@b}"
end

#Swapping without third variable

def swap_without_var
  @a = @a + @b
  @b = @a - @b
  @a = @a - @b
  puts @a
  puts @b
end

end
obj = Swap.new
obj.swap_value
obj.swap_without_var

#Swap in array
array = [4, 5, 6, 7]

array[0], array[3] = array[3], array[0]
print array