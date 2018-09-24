#$LOAD_PATH << '.' to make Ruby aware that included files must be searched in the current directory. If you do not want to use $LOAD_PATH then you can use require_relative to include files from a relative directory.
$LOAD_PATH << '.'
require 'inheritence'
#require_relative 'inheritence'

include Parent
class Child < Base

  def initialize(s1,s2)
    super(s1)
    puts "Square has #{s2} side"
    p "Rectangle has #{@s} sides"
  end

  #def polygon(s1,s2)
  #  super(s1)
  #  puts "Square has #{s2} side"
  #end

end

#obj = Child.new
#obj.polygon(4,5)

obj = Child.new(5,6)
p obj.s