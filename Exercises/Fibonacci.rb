require 'Benchmark'

time=Benchmark.realtime do

@cache={};@cache [1]=1;@cache[2]=1

n=49
def fibonacci(n)
@cache [n] ||= fibonacci(n-1)+fibonacci(n-2)
end

puts "#{n}'s fibonacci value is #{fibonacci(n)}'"
end
puts "Time elapsed #{time} seconds"