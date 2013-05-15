# encoding: utf-8
class Song

  def initialize(name,artlist,duration)
    @name = name
    @artlist = artlist
    @duration = duration
  end
## read attributes
#   def name
#     @name
#   end
#
#   def artlist
#     @artlist
#   end
#
#   def duration
#     @duration
#   end


  attr_reader :name,:artlist,:duration

## writer attributes

  # def duration=(new_du)
  #   @duration = new_du
  # end

  attr_writer :duration
## virtual attributes
  def duration_minutes
      @duration/60.0
  end
end

song = Song.new("my heart will go on ","blanie","2012")
p song.name
p song.artlist
p song.duration

song.duration = 234
p song.duration

p song.duration_minutes
