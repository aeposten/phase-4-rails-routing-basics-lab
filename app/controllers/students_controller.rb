class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grades
        students= Student.all
        sorted_students = students.sort_by { |student| [student.grade] }.reverse 
        render json: sorted_students
    end

    def highest_grade
        students= Student.all
        top_grade = students.sort_by { |student| [student.grade] }.reverse.first
        render json: top_grade

    end
    
end
