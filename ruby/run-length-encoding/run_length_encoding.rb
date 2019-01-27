class RunLengthEncoding
  def self.encode(input)
    input.chars.slice_when {|i, j| i != j }.collect do |slice|
      count = slice.count
      "#{count unless count == 1}#{slice.first}"
    end.join
  end

  def self.decode(input)
    stack = []

    input.chars.each_with_object([]) do |char, output|
      if char =~ /[[:digit:]]/
        stack << char
      else
        number = stack.join.to_i

        if number == 0
          output << char
        else
          output << char * number
        end

        stack.clear
      end
    end.join
  end
end

module BookKeeping
  VERSION = 2
end

