class TeachersController < ApplicationController

    def show
        teacher = Teacher.find_by(id: session[:teacher_id])
        if teacher
            render json: teacher
        else
            render json: {error: "unauthorized"}, status: 401
        end
    end
end
