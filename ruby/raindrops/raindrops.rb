class Raindrops

  def self.convert(raindrops)

    drops = [[3, 'Pling'],
             [5, 'Plang'], 
             [7, 'Plong']]

    output = drops.map do |drop_array|
      if raindrops % drop_array[0] == 0
        drop_array[1] 
      end
    end

    output.join
    output.empty? ? raindrops.to_s : output

  end

end
