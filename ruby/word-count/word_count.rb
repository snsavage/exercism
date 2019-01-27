class Phrase
  VERSION = 1

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    regex_for_scan = /(?!["'])\w+(?>'t)*(?<!['"])/ 
    phrase = @phrase.scan(regex_for_scan)
    phrase.each_with_object(count = {}) do |word|
      add_word(count, word.downcase)   
    end
  end

  private
  def add_word(count, word)
    if count.has_key?(word)
      count[word] += 1
    else
      count[word] = 1
    end
  end
end

