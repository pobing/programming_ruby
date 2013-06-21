#
# h={'dog'=> 'can','cat'=>'fel','donkey'=>'asi'}
#  h.length
#  => 3
# 1.9.2-p320 :074 > h['dog']
#  => "can"
#  h['cow']='bov'
#  => "bov"
# 1.9.2-p320 :078 > h[12]='dode'
#  => "dode"
# h['cat']=99
#  => 99
#  h
#  => {"dog"=>"can", "cat"=>99, "donkey"=>"asi", "cow"=>"bov", 12=>"dode"}
class Songlist
    def initialize
        @songs = Array.new
    end

    def append(song)
      @songs << song
      #@songs.push(song)
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