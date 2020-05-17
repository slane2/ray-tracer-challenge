
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

    describe 'a tuple that adds another tuple' do
        a = Tuple.new(5.5, 5.5, 5.5, 1.0)
        b = Tuple.new(3.3, 3.3, 3.3, 0.0)
        it "returns the sum of two tuples" do
            assert (a + b).equal?Tuple.new(8.8, 8.8, 8.8, 1.0)
        end
    end

    describe 'a vector that adds another vector' do
        a = Tuple.new(5.5, 5.5, 5.5, 0.0)
        b = Tuple.new(3.3, 3.3, 3.3, 0.0)
        it "returns a vector" do
            assert (a + b).vector?
        end
        it "does not return an point" do
            refute (a + b).point?
        end
    end

    describe 'a point that subtracts a vector' do
        a = Tuple.new(5.5, 5.5, 5.5, 1.0)
        b = Tuple.new(3.3, 3.3, 3.3, 0.0)
        it "returns the difference between two tuples" do
            assert (a - b).equal?Tuple.new(2.2, 2.2, 2.2, 1.0)
        end
        it "returns a point" do
            assert (a - b).point?
        end
    end

    describe 'a point that subtracts a vector' do
        a = Tuple.new(5.5, 5.5, 5.5, 1.0)
        b = Tuple.new(3.3, 3.3, 3.3, 0.0)
        it "returns the difference between two tuples" do
            assert (a - b).equal?Tuple.new(2.2, 2.2, 2.2, 1.0)
        end
    end

end