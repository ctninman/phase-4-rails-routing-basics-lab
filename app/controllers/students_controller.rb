class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    ordered_students = Student.all.order(grade: :desc)
    render json: ordered_students
  end

  def highest_grade
    highest_grade = Student.maximum("grade")
    top_student = Student.find_by grade: highest_grade
    render json: top_student
  end

end
