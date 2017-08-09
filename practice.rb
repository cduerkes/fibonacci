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
      puts "input: #{input}, expected: #{expected}"
    end

def recursive_fib(num)

  fib = Hash.new
  fib[0] = 0
  fib[1] = 1

  (2..num).each do |x|
    fib[x] = fib[x - 1] + fib[x - 2]
  end

  return fib[num]
end

puts recursive_fib(0)
puts recursive_fib(1)
puts recursive_fib(2)
puts recursive_fib(3)
puts recursive_fib(4)
puts recursive_fib(5)
puts recursive_fib(6)
puts recursive_fib(7)
puts recursive_fib(8)
puts recursive_fib(9)