 ## 1. 创建

 # a = [3.14159,"pie",99]
 # a.class # => Array
 # a.length  #  => 3
 # a[0] # => 3.14159
 # a[2] # => 99
 # a[3] # => nil

## 2. new
#  b=Array.new
#  => []
# 1.9.2-p320 :021 > b.class
#  => Array
# 1.9.2-p320 :022 > b.length
#  => 0
# 1.9.2-p320 :023 > b[0] ="2"
#  => "2"
# 1.9.2-p320 :024 > b[1]="arr"
#  => "arr"
# 1.9.2-p320 :025 > b
#  => ["2", "arr"]
## 3. 负数索引访问元素
#  a=[1,3,5,7,9]
#  => [1, 3, 5, 7, 9]
# 1.9.2-p320 :027 > a[-1]
#  => 9
# 1.9.2-p320 :028 > a[-2]
#  => 7
# 1.9.2-p320 :029 > a[-99]
#  => nil

##  4. [start,count] 访问数组， 返回以start开始，count 个元素的数组对象
# a = [1,3,5,7,9]
#  => [1, 3, 5, 7, 9]
# 1.9.2-p320 :031 > a[1,3]
#  => [3, 5, 7]
# 1.9.2-p320 :032 > a[3,1]
#  => [7]
# 1.9.2-p320 :033 >
# 1.9.2-p320 :034 >   a[-3,2]
#  => [5, 7]

## 5. range 对数组进行索引 .. | ... 两个点包含结束位置，3个点则不包含
#  a = [1,3,5,7,9]
#  => [1, 3, 5, 7, 9]
# 1.9.2-p320 :036 > a[1..3]
#  => [3, 5, 7]
# 1.9.2-p320 :037 > a[1...3]
#  => [3, 5]
# 1.9.2-p320 :038 > a[3..3]
#  => [7]
# 1.9.2-p320 :039 > a[3...3]
#  => []
# 1.9.2-p320 :040 > a[-3..-1]
#  => [5, 7, 9]

## 6. []= 操作符，设置数组元素的值 ，如果是单个整数，对应索引的值将被赋值右边的值替换，造成的间隙由 nil 替代
# 正 ->
#    0   1   2   3   4   5   6
#a= [ab  cd  ef  gh   hi  gk lm]
 #   -7  -6  -5  -4  -3  -2  -1
#                     <- 负



#  a= [1,3,5,7,9]
#  => [1, 3, 5, 7, 9]
# 1.9.2-p320 :042 > a[1]='bat'
#  => "bat"
# 1.9.2-p320 :043 > a
#  => [1, "bat", 5, 7, 9]
# 1.9.2-p320 :044 > a[-3] = 'cat'
#  => "cat"
# 1.9.2-p320 :045 > a
#  => [1, "bat", "cat", 7, 9]
# 1.9.2-p320 :046 > a[3]=[9,8]
#  => [9, 8]
# 1.9.2-p320 :047 > a
#  => [1, "bat", "cat", [9, 8], 9]
# 1.9.2-p320 :048 > a[6]=99
#  => 99
# 1.9.2-p320 :049 > a
#  => [1, "bat", "cat", [9, 8], 9, nil, 99]
## []= 下标是2个数字（起点和长度）或是range ，原数组的元素将被赋值右边的值替换
## 如果长度是0，赋值右边的东西则被插入到数组的起点位置之前，且不会删除原数组的任何元素
## 如果赋值右边是数组，那么其元素将替换掉原数组对应位置上的元素
## 如果索引下标选择的元素个数和赋值右边的索引个数不一致，则数组会自动调整数组长度大小
#  a=[1,3,5,7,9]
#  => [1, 3, 5, 7, 9]
# 1.9.2-p320 :051 > a[2,2]='cat' #下标是2个数字原数组的元素将被赋值右边的值替换
#  => "cat"
# 1.9.2-p320 :052 > a
#  => [1, 3, "cat", 9]
# 1.9.2-p320 :053 > a[2,0]='dog' # 长度是0，赋值右边的东西则被插入到数组的起点位置之前，且不会删除原数组的任何元素
#  => "dog"
# 1.9.2-p320 :054 > a
#  => [1, 3, "dog", "cat", 9]
# 1.9.2-p320 :055 > a[1,1]=[9,8,7] #如果赋值右边是数组，那么其元素将替换掉原数组对应位置上的元素
#  => [9, 8, 7]
# 1.9.2-p320 :056 > a
#  => [1, 9, 8, 7, "dog", "cat", 9]
# 1.9.2-p320 :057 > a[0..3]=[]
#  => []
# 1.9.2-p320 :058 > a
#  => ["dog", "cat", 9]
# 1.9.2-p320 :059 > a[5..6]=99,88 #索引下标选择的元素个数和赋值右边的索引个数不一致，则数组会自动调整数组长度大小
#  => [99, 88]
# 1.9.2-p320 :060 > a
#  => ["dog", "cat", 9, nil, nil, 99, 88]
class Songlist
    def initialize
        @songs = Array.new
    end

    def append(song)
      @songs << song
      #@songs.push(song)
      self
    end

    def delete_first
      @songs.shift
    end

    def delete_last
      @songs.pop
    end

    def [](index)
      @songs[index]
    end
end

require 'test/unit'
require '/data/projects/programming_ruby/04_class'
class TestSonglist < Test::Unit::TestCase
    def test_delete
     list = Songlist.new
     song1 = Song.new("hero","antd","duatest")
     song2 = Song.new("hero2","antd","duatest")
     song3 = Song.new("hero3","antd","duatest")
     song4 = Song.new("hero4","antd","duatest")
     list.append(song1).append(song2).append(song3).append(song4)
     p list[0]
     assert_equal(song1,list[0])
     assert_equal(song3,list[2])
     assert_nil(list[9])
     assert_equal(song1,list.delete_first)
     assert_equal(song2,list.delete_first)
     assert_equal(song4,list.delete_last)
     assert_equal(song3,list.delete_last)
     assert_nil(list.delete_last)
    end
end
