## =~ 肯定匹配  !~ 否定匹配
# 1.9.2p320 :073 > name = "Fats wall"
#  => "Fats wall"
# 1.9.2p320 :075 > name =~ /a/
#  => 1
# 1.9.2p320 :076 > name =~ /q/
#  => nil
# 1.9.2p320 :077 > name !~ /q/
#  => true
## 匹配所发生的位置 $& 得到匹配的字符串 &` 得到匹配前的字符串  &' 得到匹配后的字符串

def show_regexp(a,re)
    if a =~ re
        # puts "#{&`} << #{$&} << #{&'}"
    else
        puts "not match"
    end
end

show_regexp("abcd",/b/)
show_regexp("apple",/b/)
show_regexp("bmmm",/b/)
show_regexp("acdb",/b/)


## $1,$2

# 1.9.2p320 :079 > "12:50am" =~ /(\d\d):(\d\d)(..)/
#  => 0

# 1.9.2p320 :082 > "Hour is #$1,minute #$2"
#  => "Hour is 12,minute 50"

## String#sub String#gsub

# 1.9.2p320 :083 > a="the quick brown fox"
#  => "the quick brown fox"
# 1.9.2p320 :084 > a.sub(/^./) {|match| match.upcase}
#  => "The quick brown fox"
# 1.9.2p320 :085 > a.gsub(/[aeiou]/) {|vow| vow.upcase}
#  => "thE qUIck brOwn fOx"


def mixed_case(name)
   name.gsub(/\b\w/) { |n|n.upcase }
end
p mixed_case("apple banana") # "Apple Banana"

p mixed_case("I love you") # "I Love You"

# Sequence
# \d  [0-9] Digit character
# \D  [^0-9] Any character except a digit
# \s  [\s\t\r\n\f] Whitespace character
# \S  [^\s\t\r\n\f] Any character except whitespace
# \w  [A-Za-z0-9_] Word character
# \W  [^A-Za-z0-9_] Any character except a word character




# POSIX Character Classes
# [:alnum:]
# [:alpha:]
# [:blank:]
# [:cntrl:]
# [:digit:]
# [:graph:]
# [:lower:]
# [:print:]
# [:punct:]
# [:space:]
# [:upper:]
# [:xdigit:]
# Alphanumeric
# Uppercase or lowercase letter
# Blank and tab
# Control characters (at least 0x00–0x1f, 0x7f)
# Digit
# Printable character excluding space
# Lowercase letter
# Any printable character (including space)
# Printable character excluding space and alphanumeric
# Whitespace (same as \s)
# Uppercase letter
# Hex digit (0–9, a–f, A–F)
# Repetition
# When we specified the pattern that split the song list line, /\s*\|\s*/, we said we
# wanted to match a vertical bar surrounded by an arbitrary amount of whitespace. We
# now know that the \s sequences match a single whitespace character, so it seems likely
# that the asterisks somehow mean “an arbitrary amount.” In fact, the asterisk is one of a
# number of modifiers that allow you to match multiple occurrences of a pattern.
# If r stands for the immediately preceding regular expression within a pattern, then
# r*  matches zero or more occurrences of r.
# r+ matches one or more occurrences of r.
# r? matches zero or one occurrence of r.
# r{m,n} matches at least “m” and at most “n” occurrences of r.
# r{m,} matches at least “m” occurrences of r.
# r{m} matches exactly “m” occurrences of r.
## Object-Orignted regular expression
re = /(\d+):(\d+)/
 => /(\d+):(\d+)/ 
1.9.2p320 :034 > md=re.match("Time is 12:34")
 => #<MatchData "12:34" 1:"12" 2:"34"> 
1.9.2p320 :035 > md=re.match("Time is 12:34 am")
 => #<MatchData "12:34" 1:"12" 2:"34"> 
1.9.2p320 :036 > md.class
 => MatchData 
1.9.2p320 :037 > md[0]
 => "12:34" 
1.9.2p320 :038 > md[1]
 => "12" 
1.9.2p320 :039 > md[2]
 => "34" 

 md.pre_match # == $` 
 => "Time is"
 md.post_match # == $'
 => "am"
 #线程局部变量 $