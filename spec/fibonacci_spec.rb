require 'spec_helper.rb'

RSpec.describe 'fibonacci methods' do 
  describe "recursive_fib" do 
    @tests = {
      0 => 0, 
      1 => 1, 
      2 => 1, 
      3 => 2,
      4 => 3,
      5 => 5,
      6 => 8,
      7 => 13,
      8 => 21,
      9 => 34
    }

    @tests.each do |input, expected|
      it "should find the nth digit using recursion" do
        expect(recursive_fib(input)).to eq expected
      end
    end
  end

  describe "iterative_fib" do 
    @tests = {
      0 => 0, 
      1 => 1, 
      2 => 1, 
      3 => 2,
      4 => 3,
      5 => 5,
      6 => 8,
      7 => 13,
      8 => 21,
      9 => 34
    }

    @tests.each do |input, expected|
      it "should find the nth digit using iteration" do
        expect(iterative_fib(input)).to eq expected
      end
    end
  end
end