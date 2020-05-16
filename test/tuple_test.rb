
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require_relative '../lib/tuple'

class TupleTest < Minitest::Test

    describe 'a tuple with w = 0.0' do
        tuple = Tuple.new(9.7, 9.7, 9.7, 0.0)
        it "is a vector" do
            assert tuple.vector?
        end
        it "is not a point" do
            refute tuple.point?
        end

    end

    describe 'a tuple with w = 1.0' do
        tuple = Tuple.new(9.7, 9.7, 9.7, 1.0)
        it "is a point" do
            assert tuple.point?
        end
        it "is not a vector" do
            refute tuple.vector?
        end

    end

    describe 'a tuple with variables that match another tuple' do
        tuple_a = Tuple.new(9.7,9.7,9.7,1.0)
        tuple_b = Tuple.new(9.7,9.7,9.7,1.0)
        it "is equal to the other tuple" do
            assert tuple_a.equal?(tuple_b)
        end
    end

end