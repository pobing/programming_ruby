	# IO
	#1.
	file = File.new("test1","r") # "w","r+"
	##
	file.close
	#2.
	File.open("testfile","r") do |file|
		##
	end


 # File.open("testfile") do |file|
 #    while line = file.gets
 #    puts line
 #    end
 #  end

 # file.each_byte {|ch| puts ch; print "."}
 # file.each_line {|line| puts "Got, #{line.dump}"} 
 # IO.foreach("file_path") {|line| puts line }

 ## read to string
 # str = IO.read("testfile")
 # str.length
 # str[0,30]

 ##  read to Array
 # arr = IO.readlines("testfile")
 # arr.length
 # arr[0]
#------------------------
#require 'net/http'
 #h=Net::HTTP.new('www.sina.com.cn',80)
 # response = h.get('/index.html',nil)
 # if response.message == "OK"
 # 	puts response.body.scan(/<img src="(.*?)"/m).uniq
 # end
