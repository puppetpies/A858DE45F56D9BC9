# ====================
#  quick_post_decode.rb
#  
#  Copyright 2015 Bri In The Sky <brian@orville>
#
#  Guid: 4e5b5fd4-1245-41a2-a858-de45f56d9bc9
#  
#  ruby a858.rb -s 0 -f addition
#
#  If your interested in this bit of code i'll be on the #A858 on irc.freenode.net - dome22xl

require 'keycounter'
require 'pp'

def convert_hex(str)
  str.hex.to_s
end
  
def convert_ord(str)
  str.ord.to_s
end

def convert_chr(str)
  str.chr.to_s
end

h, k = Keycounter.new, Keycounter.new
str = "2d86cc12765f2aaea1fe682544f55e66 50ee1c06bf42c449b3af72dcda2c2e11 f63b926cccb8e0b1455674373bca2bf6 30dd5bafe6f651a5f9a136a6406bdaa3 f1644082f11fd7b3f514fd63848d7341 54ed53bf2898a98d9cee318ceb8ad355 f66222fa37c1b1c80e84580052726793 ab1d645720d80df266b04c9de3a4db3a 9309d0d6a1191044fccb9a342b00c1da e4f4f891b112d05877df1c87e09402c5 6851105e1711c9e5607018ac6482ce03 3eec79aafbd94c518d095a174d49a878 430670d768590b40f3fa748ebff54a50 b2829f24455f2fbb55653416f4730a99 d7bae450facd41604fad6ac99892927a 4eca5f78501f73c5ac5abe929a7ecec2 2e6793303b455cf7eb977e7ea5b993c6 7c44f3213daf072772708698f9ea0911 7c960c4c1880975bb58d84a50e874ba7 5d3d22fd72eeb6b729e7e63ca093d3f5 510f9092c76dfc3133e6ba9da3172f25 655c54f60d3d638aa2fcdb853b92526a e74a6476adde33be14ed266898855021 6372b873070f289b7d9d4a89ea567ced 32408fb0b4d9009f329e4a032b38d896 342ade1ca7f4fef43a0823473ad5a1da fbef14d60e79bf18"
mdtuples = str.split(" ")
twochar = String.new
mdtuples.each {|n| 
  n.split("").each {|m|
    twochar << m
    if twochar.size == 2
      hexconvert = convert_hex(twochar)
      print "#{hexconvert} "
      k.keycount("A858_CODE_#{twochar}");
      twochar = ""
    end
  }
}

keys =  k.keycount_compile
puts "Keycounter Codes info: "
pp keys.sort_by { |h| h[1] }
keys.sort_by { |i|
  h.keycount("A858_REP_#{i[1]}")
}
puts "Keycounter Codes - Repeat totals occurances: "
repeat = h.keycount_compile
pp repeat.sort_by { |h| h[1] }
puts "Keycounter Code info Size:"
pp keys.sort_by { |h| h[1] }.size
      
