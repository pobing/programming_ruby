# 1.9.2-p320 :001 > persion = "Tim"
#  => "Tim"
# 1.9.2-p320 :002 > persion.object_id
#  => 70036830
# 1.9.2-p320 :003 > persion.class
#  => String
# 1.9.2-p320 :004 > persion
#  => "Tim"

## 变量只是对对象的引用，它不是一个对象，变量保存的是对象的引用，而非对象本身
 persion = "Tim"
 persion1=persion
 persion1[0]="J"
 persion # "Jim"
 persion1 # "Jim"

## 赋值别名
 persion1="Tim"
 # => "Tim"
 persion2=persion1.dup
 # => "Tim"
 persion1[0]="J"
 # => "J"
 persion1
 # => "Jim"
 persion2
# => "Tim"

## 冻结对象
persion1="Tim"
# => "Tim"
 persion2=persion1
# => "Tim"
 persion1.freeze
# => "Tim"
 persion2[0]="J"
# RuntimeError: can't modify frozen string


