##
num = 81
6.times do
    puts "#{num.class}: #{num}"
    num*=num
end
# =>
# Fixnum: 81
# Fixnum: 6561
# Fixnum: 43046721
# Bignum: 1853020188851841
# Bignum: 3433683820292512484657849089281
# Bignum: 11790184577738583171520872861412518665678211592275841109096961

## abs
-9.abs # => 9
