# Write code here
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each_with_object({}) { |(grade, students), hash|
      hash[grade] = students.sort
    }
  end
end
