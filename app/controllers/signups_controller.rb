class SignupsController < ApplicationController
    def create
        signup = Signup.create(params[signup_params])
        if signup
            render json: signup.activity
        else 
            render json: {errors:["validation error"]}
        end 
    end 

private
def signup_params
    params.permit(:time, :camper_id, :activity_id)
end 
end
