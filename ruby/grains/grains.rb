class Grains
  def self.square(x)
    2**(x - 1)
  end
  
  def self.total
    (1..64).each_with_object(x = 0)  do |n|
      x += self.square(n)
    end
    return x
  end
end

