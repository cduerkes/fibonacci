require 'spec_helper.rb'

RSpec.describe Fibonacci, type: :model do 
  describe "recursive fibonacci sequence should work" do 
    it "should find the nth digit using recursion" do
      input = 9
      expected = 34

      rfib = Fibonacci.new(input)
      rfib.recursive_fib
      expect(rfib.num).to eq expected
    end
  end

  describe "iterative fibonacci sequence should work" do 
    it "should find the nth digit using iteration" do
      input = 9
      expected = 34

      ifib = Fibonacci.new(input)
      ifib.iterative_fib
      expect(ifib.num).to eq expected
    end
  end
end