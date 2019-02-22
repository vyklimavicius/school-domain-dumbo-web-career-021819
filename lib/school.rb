class School

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name,grade)
    if !@roster.has_key?(grade) # true
    @roster[grade] = [student_name]
    else
    @roster[grade] << student_name
  end
  end

  def grade(grade)
    @roster.values_at(grade).flatten
  end

  def sort
    @roster.each_value do |array|
      array.sort!
    end
  end
end


sagrado = School.new("Sagrado")
sagrado.add_student("Ricky", 9)
sagrado.add_student("V", 8)
sagrado.add_student("Matt", 9)

# p sagrado.roster #=> {9=>["Ricky", "Matt"], 8=>["V"]}
# p sagrado.grade(9)
# p sagrado.sort
