## %q %Q
#  %q/a b c d /
#  => "a b c d "
# 1.9.2p320 :004 > %q/a b c d/
#  => "a b c d"
# 1.9.2p320 :005 > %Q/a b c d/
#  => "a b c d"
# 1.9.2p320 :006 > %Q!a b c d!
#  => "a b c d"
# 1.9.2p320 :007 > %Q{a b c d}
#  => "a b c d"
## here document
require '/data/projects/programming_ruby/04_class'
require '/data/projects/programming_ruby/chapter4/array'
File.open("/data/projects/programming_ruby/chapter5/numbers") do |songfile|
 songs = Songlist.new
 songfile.each do |line|
     file,length,name,title = line.chomp.split(/\s*\|\s*/)
     name.squeeze!(" ")
     mins,second = length.scan(/\d+/)
     songs.append(Song.new(title,name,mins.to_i*60+second.to_i))
 end
 puts "song << : #{songs[1]}"
end

class WordIndex
 def initialize
     @index={}
 end
 def add_to_index(obj,*phrases)
     phrases.each do |phrase|
         phrase.scan(/\w[-\w']+/) do |word|
          word.downcase
          @index[word] = [] if @index[word].nil?
          @index[word].push(obj)
         end
     end
 end
 def lookup(word)
  @index[word.downcase]
 end
end
class Songlist
    def initialize
    @songs= Array.new
    @index = WordIndex.new
    end
    def append(song)
        @songs.push(song)
        @index.add_to_index(song,song.name,song.artlist)
        self
    end

    def lookup(word)
     @index.lookup(word)
    end
end

songs=Songlist.new
File.open("/data/projects/programming_ruby/chapter5/numbers") do |songfile|
 songs = Songlist.new
 songfile.each do |line|
     file,length,name,title = line.chomp.split(/\s*\|\s*/)
     name.squeeze!(" ")
     mins,second = length.scan(/\d+/)
     songs.append(Song.new(title,name,mins.to_i*60+second.to_i))
 end
 puts "song << : #{songs[1]}"
 puts songs.lookup("fats cat")
  puts songs.lookup("2:45")
end
