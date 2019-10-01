def recursive_fib(number)
  if number < 2
    return number
  else
    return recursive_fib(number - 1) + recursive_fib(number - 2)
  end
end

def iterative_fib(number)
  a = 0
  array = []
  while a <= number
    if a < 2
      array << a
    else
      b = array[-1] + array[-2]
      array << b
    end
    a = a + 1
  end
    return array.pop
end

x = iterative_fib(35)
puts x
y = recursive_fib(35)
puts y

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end