require 'ostruct'

class Tuple
    attr_accessor :x, :y, :z, :w
    def initialize(x, y, z, w)
        @x = x
        @y = y
        @z = z
        @w = w
    end

    def vector?
        self.w == 0
    end

    def point?
        !vector
    end


end