class SumOfMultiples
  def initialize(*args)
    @multiples = args
  end

  def to(num)
    @multiples.map { |x| find_multiples(x, num) }.flatten.uniq.reduce(:+)
  end

  private

  def find_multiples(multiple, num)
    return [0] if multiple >= num

    (multiple...num).step(multiple).to_a
  end
end
