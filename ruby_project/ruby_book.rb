######################
#Chapter 1
#def abc
#  return 9
#end
#puts "#{abc}"
#
#tax_rate = 0.234
#sub_total = 24
#print "Enter value:"
#sub_total = gets
#sub_total = sub_total.to_f #taking input from user
#if (sub_total < 0.0)
#  sub_total = 0
#end
#tax = tax_rate * sub_total
#puts "total amout is #{tax}"

#####################################
#getter and setter
#class GetterAndSetter
#
#  def set_name(name)
#    @name = name
#  end
#
#  def get_name
#    return @name
#  end
#
#  def talk
#    return "Bhaoo"
#  end
#end
#
#obj1 = GetterAndSetter.new
#obj1.set_name("rajat")
#p obj1.get_name
#p obj1.talk

############################################

#class Treasure
#  def initialize( aName, aDescription )
#    @name         = aName
#    @description  = aDescription
#  end
#
#  def to_s # override default to_s method
#    "The #{@name} Treasure is #{@description}\n"
#  end
## This time we won't override to_s so the Treasure object
## will use the default to_s method...
#end
#
#
#t = Treasure.new( "Sword", "A lovely Elvish weapon" )
#puts("   Class.to_s")
#puts(Class.to_s)
#puts("   Object.to_s")
#puts(Object.to_s)
#puts("   String.to_s")
#puts(String.to_s)
#puts("   100.to_s")
#puts(100.to_s)
#puts("   Treasure.to_s")
#puts(Treasure.to_s)
#puts("   t.to_s")
#puts(t.to_s)
#puts("   t.inspect")
#puts(t.inspect)

################################
#Chapter 2
#class Thing
#  def initialize(aName, aDescription)
#    @name = aName
#    @description = aDescription
#  end
#
#  def get_name
#    @name
#  end
#
#  def get_description
#    @description
#  end
#  def set_name(name)
#    @name = name
#  end
#
#  def set_description(description)
#    @description = description
#  end
#end
#
#class Treasure < Thing
#  def initialize(aName, aDescription, value)
#    super(aName, aDescription)
#    @value = value
#  end
#
#  def get_value
#    @value
#  end
#
#  def set_value(value)
#    @value = value
#  end
#end
#
#obj = Treasure.new("Sweety", "this Ruby book is very good", 1)
#obj1 = Treasure.new("abc", "this Ruby book is very good", 2)
#p obj.get_name
#p obj.get_description
#p obj.get_value
#obj.set_name("nov")
#p obj.get_name
#p obj1.get_name
#p obj1.get_description
#p obj1.get_value

###############################
#Super
#class Class1
#  def initialize(a,b,c)
#    @a = a
#    @b = b
#    @c = c
#  end
#end
#
#class Class2 < Class1
#  def initialize(a,b,c,d,e)
#  super(a,b,c)
#  end
#end
#
#class Class3 < Class1
#  def initialize(a,b,z)
#  super #pass all arguments
#  end
#end
#
#class Class4 < Class1
#  def initialize(a,b,z)
#    #super() #raise error wrong number of arguments (0 for 3) (ArgumentError)
#  end
#end
#
#obj2 = Class2.new(3,4,5,6,7)
#obj3 = Class3.new(9,8,7)
#obj4 = Class4.new(5,3,4)
#p obj2
#p obj3
#p obj4

#Accessor:
#class Accessor
#  attr_reader :description
#  attr_writer :description
#  attr_reader :name
#  attr_writer :name
#   def initialize(name, description)
#     @name = name
#     @description = description
#   end
#end
#
#obj5 = Accessor.new('nimmi', 'this is very gud girl')
#p obj5.name
#p obj5.name='rimi'
#p obj5.name
#p obj5.description
#p obj5.description= "nice girl"
#p obj5.description

###########################
#class hirarcy
#class Thing
#  def initialize(name, description)
#    @name = name
#    @description = description
#    puts("Thing.initialize: #{self.inspect}\n\n")
#  end
#
#  def aMethod(aName)
#    @name = aName
#    puts("Thing.aMethod: #{self.inspect}\n\n")
#  end
#end
#
#class Thing1 < Thing
#  def initialize(name, description)
#    super
#    puts("Thing1.initialize: #{self.inspect}\n\n")
#  end
#
#  def aMethod(aName, aDescription)
#    super(aName)
#    puts("Thing1.aMethod: #{self.inspect}\n\n")
#  end
#end
#
#class Thing2 < Thing1
#  def initialize(name, description, value)
#    super(name, description)
#    @value = value
#    puts("Thing2.initialize: #{self.inspect}\n\n")
#  end
#
#  def aMethod(aName, aDescription, aValue)
#    super(aName, aDescription)
#    @value = aValue
#    puts("Thing2.aMethod: #{self.inspect}\n\n")
#  end
#end
#
#class Thing3 < Thing2
#  def aMethod
#    puts("Thing3.aMethod: #{self.inspect}\n\n")
#  end
#end
#
#class Thing4 < Thing3
#end
#
#def test
#  puts( "------------- TEST ------------------" )
#  t = Thing.new( "A Thing", "a lovely thing full of thinginess" )
#  t.aMethod( "A New Thing" )
#end
#
#### --- Thing1 object ---
#
#def test1
#  puts( "------------- TEST 1 ------------------" )
#  t2 = Thing1.new( "A Thing2", "a Thing2 thing of great beauty" )
#  t2.aMethod( "A New Thing2", "a new Thing2 description" )
#end
#
#### --- Thing2 object ---
#
#def test2
#  puts( "------------- TEST 2 ------------------" )
#  t3 = Thing2.new( "A Thing 2", "a Thing3 full of Thing and Thing2iness", 500 )
#  t3.aMethod( "A New Thing3", "and a new Thing3 description", 1000 )
#end
#
#### --- Thing4 object ---
#
#def test3
#  puts( "------------- TEST 3 ------------------" )
#  t4 = Thing3.new( "A Thing3", "the nicest Thing4 you will ever see", 10 )
#  t4.aMethod
#end
#
#### --- Thing5 object ---
#
#def test4
#  puts( "------------- TEST 4 ------------------" )
#  t5 = Thing4.new( "A Thing4", "a very simple Thing5", 40 )
#  t5.aMethod
#end
#
## 'main' loop
#ans = ''
#puts( "Run Test 1, 2, 3, 4, 5?\nWrite a number or 'q' to quit. Then press [Enter] key\n\n" )
#until ans == 'q' do
#  puts( "[ Enter 1, 2, 3, 4, 5 or 'q'? ]" )
#  print( "> " )
#  ans = gets[0].chr().downcase()
#  case ans
#    when '1' then test()
#    when '2' then test1()
#    when '3' then test2()
#    when '4' then test3()
#    when '5' then test4()
#  end
#end


#class One
#end
#
#class Two < One
#end
#
#class Three < Two
#end
#
## Create ob as instance of class Three
## and display the class name
#ob = Three.new
#x = ob.class
#puts( x )
#
## now climb back through the hierarchy to
## display all ancestor classes of ob
#begin
#  x = x.superclass
#  puts(x)
#end until x == nil

#########################
#Constant:
#class X
#  A = 10
#
#  class Y
#    def xyz
#      puts( "goodbye" )
#    end
#  end
#
#  def self.abc
#    puts("hello")
#  end
#end
#
#puts( X::A )
#X::abc		# you may also access class methods with ::
#X.abc		# though a single dot also works here!
#
#ob = X::Y.new
#ob.xyz

############################################

#class A
#  def a
#    puts( "a" )
#  end
#end
#
#class B < A
#  def ba1
#    puts( "ba1" )
#  end
#end
#
#class A
#  def b
#    puts( "b" )
#  end
#end
#
#class B < A
#  def ba2
#    puts( "ba2" )
#  end
#end
#
#
#class Array
#  def gribbit
#    puts( "gribbit" ) #You can also use partial class definitions to add features to Ruby’s standard classes such as Array:
#  end
#end
#
#ob = B.new
#ob.a
#ob.b
#ob.ba1
#ob.ba2
#[1,2,3].gribbit
#[].gribbit


#######################################
#Chapter 3
#String
class MyClass
  attr_accessor :name
  attr_accessor :number

  def ten
    return 10
  end
end

obj = MyClass.new
obj.name= "abc"
obj.number= 50
puts( "My name is #{obj.name} and my number is #{obj.number}" )
puts( "Here's a tab\ta new line\na calculation #{2*3} and a method-call #{obj.ten}" )

