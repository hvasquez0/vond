class UsersController < ApplicationController

 def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end     
end    
    

    
    
    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :username,:email,:phone,:profession,:experience_level,:further_information,:group_id)
    end
    