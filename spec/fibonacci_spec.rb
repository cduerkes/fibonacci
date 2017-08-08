require 'spec_helper.rb'

RSpec.describe 'fibonacci methods' do 
  describe "recursive_fib" do 
    it "should find the nth digit using recursion" do
        input = 9
        expected = 34

        rfib = recursive_fib(input)
        expect(rfib).to eq expected
    end

  describe "iterative_fib" do 
    it "should find the nth digit using iteration" do
        input = 9
        expected = 34

        ifib = iterative_fib(input)
        expect(ifib).to eq expected
    end
end