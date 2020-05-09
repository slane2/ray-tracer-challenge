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
        self.w == 0.0
    end

    def point?
        self.w == 1.0
    end


end