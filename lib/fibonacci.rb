def recursive_fib(num)
  return (num - 1) + (num - 2)
end

def iterative_fib(num)

  fib = Hash.new
  fib[0] = 0
  fib[1] = 1

  (2..num).each do |x|
    fib[x] = fib[x - 1] + fib[x - 2]
  end

  return fib[num]
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num) }
end