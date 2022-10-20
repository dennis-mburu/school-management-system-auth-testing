class ParentsController < ApplicationController

    def show
        parent = Parent.find_by(id: session[:parent_id])
        if parent
            render json: parent
        else
            render json: {error: "unauthorized"}, status: 401
        end
    end
end
