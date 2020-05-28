# Add  code here!
require 'benchmark'

def prime?(num)
  if num <= 1
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

def prime_refactored?(num)
  if num <= 1
    return false
  else
    (2..num-1).to_a.all? do |possible_factor|
      num % possible_factor != 0
    end
  end
end

# puts prime?(12)
# puts Benchmark.measure {}
