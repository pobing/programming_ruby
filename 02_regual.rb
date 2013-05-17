#encoding: utf-8
# /Pytho|Perl/ == /P(ython|erl)/
# /ab+c/ + 一个或多个
# /ab*c/ * 0个或多个
# \s 匹配空白字符（空格符，制表符，回车换行等等）
# \d 匹配任何数字
# \w 匹配出现在词内的任何字符
# . 匹配任何字符
line ="Python"

puts "hello1" if line =~ /Pytho|Perl/ # 发现模式，返回模式的开始位置

line.sub(/Pyhton/,"ruby") # 用ruby 替换第一个 python
line.gsub(/Python/, "ruby") # 用ruby 替换所有的 python
line.gsub(/Python|Perl/, "ruby")


/\d\d:\d\d:\d\d/ # a time such as 12:34:56
/Perl.*Python/ # Perl, zero or more other chars, then Python
/Perl Python/ # Perl, a space, and Python
/Perl *Python/ # Perl, zero or more spaces, and Python
/Perl +Python/ # Perl, one or more spaces, and Python
/Perl\s+Python/ # Perl, whitespace characters, then Python
/Ruby (Perl|Python)/ # Ruby, a space, and either Perl or Python
