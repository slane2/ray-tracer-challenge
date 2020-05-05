require 'ostruct'

class Tuple

    validates_presence_of :x, :y, :z, :w

    scope :point, -> () { where.not(w: 0) }
    scope :vector, -> () { where(w: 0) }

    def point?
        !vector
    end