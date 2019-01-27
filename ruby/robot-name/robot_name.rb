class Robot
  def initialize
    @name = generate_name
  end

  def name
    @name
  end

  def reset
    @name = generate_name
  end

  private
    def generate_name
      random_letters + random_numbers.to_s.rjust(3, "0")
    end

    def random_letters
      alphabet = ('A'..'Z').to_a
      alphabet[random_number(27) -1] + alphabet[random_number(27) -1]
    end 

    def random_numbers
      random_number(999)
    end
    
    def random_number(max)
      Random.rand(max)
    end
end
