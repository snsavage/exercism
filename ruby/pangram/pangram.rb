class Pangram
  def self.is_pangram?(sentence)
    lowercase_sentence = sentence.downcase

    ("a".."z").all? do |letter|
      lowercase_sentence.include?(letter)
    end
  end
end

module BookKeeping
  VERSION = 2
end

