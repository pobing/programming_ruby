#encoding: utf-8
class Song
    #class variables
  @@plays = 0
  def initialize(name,artlist,duration)
    @name = name
    @artlist = artlist
    @duration = duration
    @plays = 0
  end

  def to_s
   "Song Info #{@name},#{@artlist} (#{@duration})"
  end

  def play
    @plays += 1
    @@plays += 1
    p "Song Info #{@name},#{@artlist} (#{@duration}) #@@plays plays"
  end
  attr_reader :duration
end

song = Song.new("hero","antd","duatest")
p song.inspect
p song.to_s

# 继承
class EnglishSong < Song
  def initialize(name,artlist,duration,lrc)
      super(name,artlist,duration)
      @lrc = lrc
  end

  def to_s
      super + "#{@lrc}"
  end
end
song = EnglishSong.new("god is a ","antd","duatest","lrc...........")
p song.to_s

song1 = Song.new("hero","antd","duatest")
song.play
song2 = EnglishSong.new("god is a ","antd","duatest","lrc...........")
song2.play

# class methods
#类方法3中定义方式
# class Demo
#     # 1
#     def Demo.mets
#         #
#     end
#     # 2
#     def self.mets
#         #
#     end
#     # 3
#     class <<self
#      def mets
#       #
#      end
#     end
# end

class Songlist
  MAX_TIME = 5*60
  def self.too_long(song)
      return song.duration > MAX_TIME
  end
end

song3 = Song.new("hero","antd",400)
song4 = Song.new("hero","antd",280)
 p Songlist.too_long(song3) #false
 p Songlist.too_long(song4) #true


 class MyLogger
    private_class_method :new
    @@logger = nil
    def self.create
      @@logger = new unless @@logger
      @@logger
    end
 end
 p MyLogger.create.object_id
 p MyLogger.create.object_id
