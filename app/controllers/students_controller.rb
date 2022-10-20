class StudentsController < ApplicationController

    def show
        student = Student.find_by(id: session[:student_id])
        if student
            render json: student
        else
            render json: {error: "unauthorized"}, status: 401
        end
    end
end
