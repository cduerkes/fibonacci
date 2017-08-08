class Fibonacci
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def recursive_fib
    @num = @num * 2
    return Fibonacci.new(@num)
  end

  def iterative_fib
    @num = @num * 2
    return Fibonacci.new(@num)
  end
end


require 'benchmark'
num = 35
rfib = Fibonacci.new(num)
ifib = Fibonacci.new(num)
Benchmark.bm do |x|
  x.report("recursive_fib") { rfib.recursive_fib }
  x.report("iterative_fib") { ifib.iterative_fib }
end