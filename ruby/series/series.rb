require 'pry'

class Series
  def initialize(number)
    @number = number.split("")
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @number.length

    @number.length.times.map do |i|
      slice = @number.slice(i, slice_length).join
      slice if slice.length == slice_length
    end.compact
  end
end
