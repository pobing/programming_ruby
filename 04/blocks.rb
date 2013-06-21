    # class Songlist
    #     def with_title(title)
    #         @songs.find {|song| title == song.name}
    #     end
    # end

    def three_times
        yield
        yield
        yield
    end
    three_times { puts "hello,ruby" }

    def fib_up_to(max)
        i1,i2 = 1, 1
        while i1 <= max
          yield i1
          i1, i2 = i2, i1 + i2
        end
    end
    fib_up_to(1000) {|f| p f }

    class Array
        def find
          for i in  0...size
            value = self[i]
            return value if yield(value)
          end
          return nil
        end
    end
    [1,2,3,4,5,6,7].find {|v| v*v > 20 } # => 5
    [1,3,5,7].inject(0) {|sum,el| sum+el} # 15
    [1,3,5,7].inject(1) {|sum,el| sum*el} # 105

## proc
    def n_times(thing)
      return lambda {|n| thing * n }
    end
    p1 = n_times(23)
    p p1.call(2) # 46
    p p1.call(3) # 69
    p2 = n_times("hello ")
    p p2.call(3) # "hello hello hello "
