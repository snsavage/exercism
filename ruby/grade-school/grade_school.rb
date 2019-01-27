require 'pry'

class School
  def initialize
    @roster = []
  end

  def students(grade_number)
    if grade = find_grade(grade_number)
      grade[:students]
    else
      []
    end
  end

  def students_by_grade
    return [] if @roster.empty?

    @roster.sort { |x, y| x[:grade] <=> y[:grade] }
  end

  def add(student, grade_number)
    if grade = find_grade(grade_number)
      grade[:students] = sort_students(grade[:students].push(student))
    else
      @roster.push({grade: grade_number, students: [student]})
    end
  end

  private

  def find_grade(grade_number)
    grade = @roster.select do |grade_hash|
      grade_hash[:grade] === grade_number
    end.first

    return grade != [] ? grade : false
  end

  def sort_students(names)
    names.sort { |x , y| x <=> y }
  end
end

class BookKeeping
  VERSION = 3
end
