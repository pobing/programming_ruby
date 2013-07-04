require 'net/http'
# demo1
pages = %w(www.sina.com.cn www.baidu.com www.qq.com)
threads = []
	for page_to_featch in pages
		threads << Thread.new(page_to_featch) do |url|
		h = Net::HTTP.new(url,80)
		puts "Fetching: #{url}"
		resp = h.get('/')
		puts "Got #{url}: #{resp.message}"	
	end
end
threads.each {|thr| thr.join}

# demo2
count = 0 
threads1 = [] 
10.times do |i|
	threads1[i] = Thread.new do
		sleep(rand(0.1))
    Thread.current["mycount"] = count
    count +=1
		end
end
threads1.each {|t| t.join; print t["mycount"],", "}
puts "count = #{count}"

#demo3

threads = []
4.times do |number|
	threads << Thread.new(number) do |i|
		raise "Boom!" if i == 2
		print "#{i}\n"
	end
end

threads.each do |t|
	begin
		t.join
	rescue RuntimeError => e
		 puts "Failed: #{e.message}"
	end
end