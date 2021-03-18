require "pry"
class School
  attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
# binding.pry
  end

  def grade(grade)
    binding.pry
    @roster[grade]
  end

  def sort
    student_hash = {}
    @roster.each do |grade, students|
  #  binding.pry
         student_hash[grade] = students.sort
  end
  student_hash
  end
  # hash["new_key"] << "new_value_for_value_array"
  #{10=>["AC Slater"]}
end