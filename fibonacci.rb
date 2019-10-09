def recursive_fib(number)
  if number < 2
    return number
  else
    return recursive_fib(number - 1) + recursive_fib(number - 2)
  end
end

def iterative_fib(number)
  value = 0
  array = []
  while value <= number
    if value < 2
      array << value
    else
      sequence_value = array[-1] + array[-2]
      array << sequence_value
    end
    value = value + 1
  end
    return array.pop
end

iterative_result = iterative_fib(35)
puts iterative_result
recursive_result = recursive_fib(35)
puts recursive_result

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end