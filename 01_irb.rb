#encoding: utf-8
##
def sum num1,num2
  puts	num1 + num2
end

sum(1,2)  # -> 3
sum("hello","ruby") # -> helloruby

# \n
puts "hi,\n jido"

# capitalize
"jido".capitalize # -> Jido

#表达式如果是类变量或全局实例，则不需要提供花括号
$greeting = "hello"
@name = "pobing"
puts "#$greeting,#@name"

# array
a= [1,'cat','3.4']
# visit first
a[0]# -> 1
# set thrid element value nil
a[2] = nil
# show this array
a #-> [1,'cat','3.4']


# %w{}
 a = %w{ant peopl banaba}
# => ["ant", "peopl", "banaba"]
 #
 # if
 a = 1
 puts "hello" if a >0
 # while
 suqre =2
 suqre = suqre*suqre while suqre < 1000



