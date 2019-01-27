class Prime
  def self.nth(x)
    if x == 0 
      raise ArgumentError
    end
    i = 2
    result = []
    until result.count == x
      result.push(i) if is_prime?(i)
      i += 1
    end
    result.pop    
  end

  private      
  def self.is_prime?(x)
    if x.even? && x != 2
      false
    else
      !(2..(x - 1)).any? do |integer|
        x % integer == 0
      end
    end
  end
end

