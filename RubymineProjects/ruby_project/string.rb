#String Ques:
#How to Print duplicate characters from String? -- done
#How to check if two Strings are anagrams of each other
#print first non repeated character from String? -- done
#reverse String -- done
#How to check if a String contains only digits
#count number of vowels and consonants in a String -- done
#count occurrence of a given character in String -- done
#find all permutations of String
#reverse words in a sentence without using library method -- done
#check if String is Palindrome -- done
#remove duplicate characters from String
#return highest occurred character in a String "aaaaaaaaaaaaaaaaabbbbcddddeeeeeeaa" #a:19 --
#return highest continuous character in a String "aaaaaaaaaaaaaaaaabbbbcddddeeeeeeaa" #a:17
#remove a given characters from String --
#find longest palindrome in a string
#sort String on their length -- done
#replace a given character from string -- done



#require 'selenium-webdriver'
#
#@driver = Selenium::WebDriver.for :firefox
#@driver.manage.window.maximize
#
#def full_page_text
#  page_text = @driver.find_element(:tag_name, "body").text
#  count = page_text.scan(/(n|N)ews/)
#  count1 = page_text.scan(/([A-Z]{2,})/)
#  puts count1
#  puts count1.size
#end
#begin
#@driver.get("http://www.google.com")
#@driver.manage.timeouts.implicit_wait = 20
#wait = Selenium::WebDriver::Wait.new(:timeout => 30)
#wait.until{@driver.title.include?"Google"}
#@driver.title == "Google" ? "Google page is displayed properly" : "Google page is not displayed properly"
#ele = @driver.find_element(:name, 'q')
#ele.send_keys "news"
#ele.submit
#sleep 30
#full_page_text
#ensure
#@driver.quit
#end


#text = "AAAABBCCCCDDDDAA"
#p text.size
#count = 0
#for i in 0...text.size
#  flag = 0
#  for j in i...text.size
#    if text[j] == text[j+1]
#     flag+=1
#    else
#      break
#    end
#  end
#  puts j
#  count+=flag
#  puts count
#  puts i
#  puts "count of #{text[i]} is #{flag+1}"
#end


#text = "AAAAABBBCCCCDDDDAAB"
#
#start = 0
#  for i in 0...text.size
#    if start == i
#    count = 1
#    for j in i...text.size
#      if text[j] == text[j+1]
#        count+=1
#      else
#        break
#      end
#    end
#    start=start+count
#    puts "#{count} of #{text[i]}"
#    end
#  end
#
#str = 'aabbccccccddamacysaaa\naerrrrrmacysee'
#str = 'rajaattttt'
#puts str
##puts str.scan(/((.)\2*)/).group_by{|s, c| s.length}.max.last.map(&:last)
#puts str.scan(/((.)\2*)/).inspect
#puts str.scan(/((.)\2*)/).group_by{|s, c| s.length}.inspect
#puts str.scan(/((.)\2*)/).group_by{|s, c| s.length}.max.inspect
#puts str.scan(/((.)\2*)/).group_by{|s, c| s.length}.max.last.inspect
#puts str.scan(/((.)\2*)/).group_by{|s, c| s.length}.max.last.map(&:last).inspect

#str = String.new
#str = "sweety"
#s = []
#for i in 1..str.size
#  s << str[-i]
#end
#s = s.join("")
#print s
#puts
#


#puts 'rajaattttt'.scan(/((.)\2*)/).group_by{|s, c| s.length}.max.last.map(&:last).inspect









#puts 'swweetyyyytyy'.scan(/((.)\2*)/).group_by{|s, c| s.length}.max.last.map(&:last).inspect
str = "@abc#sdfd@sfdf#sadsdf@sdfsdf#sdfsdf@sdsdf#dfdf@sdff#sddf"
p str.scan(/@([a-z]+)/).flatten
p str.scan(/#([a-z]*)/).flatten