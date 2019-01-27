class Array
  def accumulate
    return enum_for(:each) unless block_given?

    self.map { |e| yield e }
  end
end

class BookKeeping
  VERSION = 1
end
