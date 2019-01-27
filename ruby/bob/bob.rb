require 'pry'

class Bob
  attr_reader :remark

  def hey(remark)
    @remark = remark

    case
    when silence? then "Fine. Be that way!"
    when shouting? then "Whoa, chill out!"
    when question? then "Sure."
    else "Whatever."
    end
  end

  def silence?
    remark.strip.empty?
  end

  def question?
    remark.end_with?("?")
  end

  def shouting?
    non_digits = remark.match(/[A-Za-z]+/).to_s
    binding.pry
    non_digits == non_digits.upcase unless non_digits.empty?
  end
end

