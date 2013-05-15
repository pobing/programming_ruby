# encoding: utf-8
# block 只是在do .. end 或者 { } 之间的代码

# { puts hello } 单行使用

## 多行使用 do .. end
# do
#   u = User.new
#   u.save
# end

# greet { puts 'Hi' }
# verbose_greet(p) { puts 'hi' }

def call_block
    puts "hello 1 "
    yield
    yield
    puts "hello 3"
end

call_block { puts 'hello 2 '}
# =>
# hello 1
# hello 2
# hello 2
# hello 3

def call_block2
   yield("hello",4)
end

call_block2 { |str,num| puts "#{str}#{num}"}

['a','b','c','d'].each { |name| p name," " }
5.times { puts '*'}
6.upto(10) {|i| p i }
('a'..'e').each  {|char| p char }