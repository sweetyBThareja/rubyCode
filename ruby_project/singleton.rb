#class SingletonTest
# def size
#  p 25
# end
#end
#
#test1 = SingletonTest.new
#test2 = SingletonTest.new
#
#def test2.size
#  p 10
#end
#
#test1.size
#test2.size


#singleton = Object.new
#
#class << singleton
#  def abcd
#    puts "abc singleton"
#  end
#end
#
#singleton.abcd
#
#def singleton.xyz
#  puts 'xyz singleton'
#end
#
#singleton.xyz
#
#
#
#class Myclass
#  def MyClass.abc
#
#  end
#end
#
#

#require 'singleton'
#
#class MyclassS
#  include Singleton
#  def my_mtd
#    puts 'Singleton module'
#  end
#end
#
#MyclassS.instance.my_mtd
#p MyclassS.instance.class


begin
  a = []
  a[2^100000000000000]
  #abcd
 #a = 20/0
rescue NameError
  puts 'rescue NameError'
rescue ZeroDivisionError => e
  puts e
  puts 'rescue ZeroDivisionError'
rescue => e
  puts e
  puts e.class
  puts e.message
  #puts e.backtrace #backtrace method, which displays an array of strings showing the filenames and line numbers where the error occurred
  puts 'all errors rescued'
else
  puts 'no error'
ensure
  puts 'in ensure'
end

