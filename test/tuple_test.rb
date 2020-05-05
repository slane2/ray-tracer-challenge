
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require_relative '../lib/tuple'

class TupleTest < Minitest::Test
    # let(tuple) { FactoryBot.build(:tuple) }
    # before do 
    #     @tuple = Tuple.new
    # end

    describe 'a tuple with w = 0' do
        tuple = Tuple.new(9.7, 9.7, 9.7, 0)
        # @tuple.w = 0.0
        it "is a vector" do
            assert tuple.vector?
        end

        # it "is not a point" do
        #     refute tuple.point?
        # end
        # tuple.w = 0
        # expect(tuple).to be_vector
        # expect(tuple).not_to be_point
        # assert_equal 0, tuple.w
        # refute_equal 9, tuple.w
    end

    # describe 'a tuple with w = 1' do
    #     tuple = Tuple.new(9.7, 9.7, 9.7, 1)
    #     # @tuple.w = 9.7

    #     it "is a point" do
    #         assert tuple.point?
    #     end

    #     it "is not a vector" do
    #         refute tuple.vector?
    #     end
    #     # tuple.w = 9
    #     # expect(tuple).to be_point
    #     # expect(tuple).not_to be_vector
    #     # assert_equal 9, tuple.w
    #     # refute_equal 0, tuple.w
    # end
end