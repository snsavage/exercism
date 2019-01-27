class Squares

  def initialize(number)

    @number = number

  end

  def square_of_sums

    n = 1
    x = 0

    while n <= @number
      x = x + n
      n = n + 1
    end

    x**2

  end

  def sum_of_squares

    n = 1
    x = 0

    while n <= @number
      x = x + n**2
      n = n + 1
    end

    x

  end

  def difference
    self.square_of_sums - self.sum_of_squares
  end

end