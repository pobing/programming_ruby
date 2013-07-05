#进制
# 1.9.2p320 :142 > 123456.to_s
#  => "123456"
# 1.9.2p320 :143 > 123456.to_s(2)
#  => "11110001001000000"
# 1.9.2p320 :144 > 123456.to_s(8)
#  => "361100"
# 1.9.2p320 :145 > 123456.to_s(16)
#  => "1e240"
# 1.9.2p320 :146 > 123456.to_s(26)
#  => "70g8"
# 1.9.2p320 :147 > 123456.to_s(32)
#  => "3oi0"
# zip
# 1.9.2p320 :159 > (1..3).zip
#  => [[1], [2], [3]]
##File

## atime last visited time
# 1.9.2p320 :163 > File.atime("/data/projects/programming_ruby/base.rb")
#  => 2013-07-05 11:06:36 +0800
## basename
# 1.9.2p320 :164 > File.basename("/data/projects/programming_ruby/base.rb")
#  => "base.rb"
# 1.9.2p320 :165 > File.basename("/data/projects/programming_ruby/base.rb",".rb")
#  => "base"
# 1.9.2p320 :166 > File.basename("/data/projects/programming_ruby/base.rb",".*")
#  => "base"

## ctime last update time
# File.ctime("/data/projects/programming_ruby/base.rb")
#  => 2013-07-05 11:49:41 +0800

##dirname
# File.dirname("/data/projects/programming_ruby/base.rb")
# => "/data/projects/programming_ruby"

#nil
# 1.9.2p320 :219 > nil.nil?
#  => true
# 1.9.2p320 :220 > nil.to_a
#  => []
# 1.9.2p320 :221 > nil.to_f
#  => 0.0
# 1.9.2p320 :222 > nil.to_i
#  => 0
# 1.9.2p320 :223 > nil.to_s
#  => ""
