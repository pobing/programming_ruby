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


