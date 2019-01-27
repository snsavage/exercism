class Binary
  def initialize(bin)
    @bin = bin.split("")
    raise ArgumentError unless @bin.all? {|x| x == "0" || x == "1"}
  end

  def to_decimal
    l = @bin.length - 1
    @bin.map.with_index { |bin, i| bin.to_i * 2 ** (l - i) }.reduce(:+)
  end
end

class BookKeeping
  VERSION = 2
end
