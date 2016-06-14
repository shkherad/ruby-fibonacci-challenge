class FibonacciRange
  include Enumerable

  attr_reader :stop, :current_fib, :next_fib, :previous_fib

  def each
      next_fib = 1
      while next_fib <= @stop
        yield next_fib
        next_fib += next_fib
      end
  end

  def initialize(stop)
    @stop = stop
  end

end

new_range = FibonacciRange.new(10).to_a
p new_range

class FibonacciNumber
end
