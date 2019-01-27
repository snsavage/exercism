class Year
  VERSION = 1

  def self.leap?(year)
    if year % 400 == 0
      yes(year)
    elsif year % 100 == 0
      no(year)
    elsif year % 4 == 0
      yes(year)
    else
      no(year)
    end
  end

  private
  def self.yes(year)
    "Yes, #{year} is a leap year"
  end

  def self.no(year)
    "No, #{year} is not a leap year"
    false
  end
end

