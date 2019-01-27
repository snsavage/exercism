class Fixnum
  def to_roman

    list_of_symbols = ["I", "V", "X"]
    list_of_values = [1, 5, 10]

    output = ""
    counter = self

    list_of_symbols.zip(list_of_values).reverse.each do |symbol, value|

      while ( counter - value ) >= 0

        # puts "Value transformation: " + list_of_values.index(value).to_s
        
        if counter == list_of_values[list_of_values.index(value) + 1] - value

          output << symbol + list_of_symbols[list_of_symbols.index(symbol) + 1]
          counter = value - list_of_values[list_of_values.index(value) + 1]

        else

          output << symbol
          counter -= value

        end

        # puts "\nSymbol: #{symbol} - Value: #{value} - Counter: #{counter} - Output: #{output}"

      end

    end

    output

  end
end
