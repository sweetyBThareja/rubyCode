#class RubyVariables
# @@no_of_student = 0
#
#  def initialize(id, name)
#    @id = id
#    @name = name
#  end
#
#  def student_detail
#    puts "student_id: #@id"
#    puts "student_name: #@name"
#  end
#  def total_number_of_student
#    @@no_of_student+=1
#    puts "total_number_of_students: #@@no_of_student"
#  end
#
# localvar = "hello"
# $globalvar = "goodbye"
# def amethod
#   localvar = 10
#   puts( localvar )
#   puts( $globalvar )
# end
# def anotherMethod
#   localvar = 500
#   $globalvar = "bonjour"
#   puts( localvar )
#   puts( $globalvar )
# end
#end
#obj1 = RubyVariables.new(1,"Rajat")
#obj2 = RubyVariables.new(2,"Sweety")
#obj3 = RubyVariables.new(3,"Sweety")
##obj1.student_detail
##obj1.total_number_of_student
##obj2.total_number_of_student
#obj1.amethod
#obj1.anotherMethod
#obj2.amethod
#obj2.anotherMethod
#obj3.amethod
#obj3.anotherMethod

#Global variable: Global variable can define any within or outside class, within method
#a = 10
#class Class1
#  def print_global
#    a = 20
#    $global_variable = 20
#    puts "Global variable in Class1 is #$global_variable"
#    puts "local variable in Class1 is #{a}"
#  end
#end
#class Class2
#  def print_global
#    a = 100
#    puts "Global variable in Class2 is #$global_variable"
#    puts "local variable in Class2 is #{a}"
#  end
#end
#
#class1obj = Class1.new
#class1obj.print_global
#class2obj = Class2.new
#class2obj.print_global
#class2obj = Class1.new
#class2obj.print_global
#





class Square
@sides = 4
def polygon
  @sides = 4
  p "size of polygon: #@sides"
end
end

class Triangle < Square
  @sides = 3
end

Square.new.polygon
Triangle.new.polygon
