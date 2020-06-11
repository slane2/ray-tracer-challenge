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

    def equal?(other)
        self.x == other.x && self.y == other.y && self.z == other.z && self.w == other.w
    end

    def +(other)
        Tuple.new((self.x + other.x), (self.y + other.y), (self.z + other.z), (self.w + other.w))
    end

    def -(other)
        Tuple.new((self.x - other.x), (self.y - other.y), (self.z - other.z), (self.w - other.w))
    end

    def to_s
        "(" + @x.to_s + ", " + @y.to_s + ", " + @z.to_s + ", " + @w.to_s + ")"
    end

    def negate
        self.x = 0.0 - self.x
        self.y = 0.0 - self.y
        self.z = 0.0 - self.z
    end

    def *(multiplier)
        Tuple.new((self.x * multiplier), (self.y * multiplier), (self.z * multiplier), (self.w * multiplier))
    end

    def /(divisor)
        Tuple.new((self.x / divisor), (self.y / divisor), (self.z / divisor), (self.w / divisor))
    end

    def magnitude
        Math.sqrt(self.x**2 + self.y**2 + self.z**2)
    end

    def normalize
        Tuple.new((self.x / Math.sqrt(14)), (self.y / Math.sqrt(14)), (self.z / Math.sqrt(14))
    end
end
