# Add  code here!
require 'benchmark'

def prime?(num)
  if num <= 0 || num == 1
    return false
  elsif num == 2
    return true
  else
      i = 2
      while i < num
        if num%i == 0
          return false
        end
        i += 1
      end
      return true
  end
end

# puts prime?(12)
# puts Benchmark.measure {}
