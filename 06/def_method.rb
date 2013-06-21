## arguments def methdods
def cool_dude(arg1="apple",arg2="banana",arg3="cake")
	puts "#{arg1},#{arg2},#{arg3}"
end
cool_dude
cool_dude("aa")
cool_dude("aa","bb")
cool_dude("aa","bb","dd")
# produce
# apple,banana,cake
# aa,banana,cake
# aa,bb,cake
# aa,bb,dd

## length argument lists
def varargs(arg1,*rest)
 puts "Got #{arg1} and #{rest.join(',')}"
end

varargs("1")
varargs("1","2")
varargs("1","2","3")


def five(a,b,c,d,e)
	p "I was passed #{a},#{b},#{c},#{d},#{e}"
end

five(1,2,3,4,5)
five(1,2,3,*['a','b'])
five(*(10..14).to_a)
#--->
# "I was passed 1,2,3,4,5"
# "I was passed 1,2,3,a,b"
# "I was passed 10,11,12,13,14"

##
# list.create_search('short jazz songs',:gener => :jazz,:duration_less_than =>270)
