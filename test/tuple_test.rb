
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require_relative '../lib/tuple'

class TupleTest < Minitest::Test

    # let(:vector) { Tuple.new(x: 3.3, y: 3.3, z: 3.3, w: 0) }

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

    describe 'equality' do
        tuple_a = Tuple.new(9.7,9.7,9.7,1.0)
        tuple_b = Tuple.new(9.7,9.7,9.7,1.0)
        it "is equal to the other tuple" do
            assert tuple_a.equal?(tuple_b)
        end
    end

    describe 'vector addition' do
        a = Tuple.new(5.5, 5.5, 5.5, 0.0)
        b = Tuple.new(3.3, 3.3, 3.3, 0.0)
        it "returns the sum of two tuples" do
            assert (a + b).equal?Tuple.new(8.8, 8.8, 8.8, 0.0)
        end
        it "returns a vector" do
            assert (a + b).vector?
        end
        it "does not return an point" do
            refute (a + b).point?
        end
    end

    describe 'a vector that adds a point' do
        a = Tuple.new(5.5, 5.5, 5.5, 0.0)
        b = Tuple.new(3.3, 3.3, 3.3, 1.0)
        it "returns a point" do
            assert (a + b).point?
        end
        it "does not return a vector" do
            refute (a + b).vector?
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
        it "does not return a vector" do
            refute (a - b).vector?
        end
    end

    describe 'a point that subtracts a point' do
        a = Tuple.new(5.5, 5.5, 5.5, 1.0)
        b = Tuple.new(3.3, 3.3, 3.3, 1.0)
        it "returns a vector" do
            assert (a - b).vector?
        end
        it "does not return a point" do
            refute (a - b).point?
        end
    end

    describe 'negation' do
        vector = Tuple.new(5.5, 5.5, 5.5, 0.0)
        tuple = Tuple.new(5.5, 5.5, 5.5, 1.0)
        zero_vector = Tuple.new(0.0, 0.0, 0.0, 0.0)
        zero_tuple = Tuple.new(0.0, 0.0, 0.0, 2.0)
        negated_vector = (zero_vector-vector)
        negated_tuple = (zero_tuple - tuple)

        it "negates a vector" do
            vector.negate
            assert vector.equal?negated_vector
        end

        it "negates a tuple" do
            tuple.negate
            assert tuple.equal?negated_tuple
        end
    end

    describe 'multiplication by a scalar' do
        a = Tuple.new(1.0, -2.0, 3.0, -4.0)
        it "returns the product of a tuple and a number" do
            assert (a * 3.5).equal?Tuple.new(3.5, -7.0, 10.5, -14.0)
        end
    end

    describe 'multiplication by a fraction' do
        a = Tuple.new(1.0, -2.0, 3.0, -4.0)
        it "returns the product of a tuple and a number" do
            assert (a * 0.5).equal?Tuple.new(0.5, -1.0, 1.5, -2.0)
        end
    end

    # describe 'division' do
    #     a = Tuple.new(1.0, -2.0, 3.0, -4.0)
    #     it "returns the product of a tuple and a number" do
    #         assert (a * 3.5).equal?Tuple.new(3.5, -7.0, 10.5, -14)
    #     end
    # end
end