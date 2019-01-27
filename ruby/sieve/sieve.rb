class Sieve
  attr_reader :limit, :integers

  def initialize(limit)
    @limit = limit
    @integers = (2..limit)
  end

  def primes
    p = 2
    primes = integers.to_a

    while p
      integers.each do |i|
        if i != p && i % p == 0
          primes[i - 2] = nil
        end
      end

      p = primes.compact.find {|x| x > p}
    end

    return primes.compact
  end
end

module BookKeeping
  VERSION = 1
end

