require 'pry'

class PhoneNumber
  class << self
    def clean(number)
      cleaned = remove_country_code(number.gsub(/\D/,''))

      if valid_length?(cleaned) && valid_area_and_exchange?(cleaned)
        cleaned
      else
        nil
      end
    end

    private

    def remove_country_code(number)
      valid_country_code?(number) ? number.slice(1, 10) : number
    end

    def valid_area_and_exchange?(number)
      range = (2..9)
      range.include?(number[0].to_i) && range.include?(number[3].to_i)
    end

    def valid_length?(number)
      number.length == 10
    end

    def valid_country_code?(number)
      number.length == 11 && number.start_with?("1")
    end
  end
end

class BookKeeping
  VERSION = 2
end
