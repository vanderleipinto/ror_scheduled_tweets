class RegistrationsController < ApplicationController
  
  def new
    @user = User.new
  end


  def create
    # params = {"email"=>"mauroinfraero@yahoo.com.br", "password_confirmation"=>"[FILTERED]", "password"=>"[FILTERED]"}, "commit"=>"Create User"}
    
    @user = User.new(user_params)
    
    if @user.save #if  saves to database correctly
      redirect_to root_path, notice: "Successfully created account."
    else      
      render :new
      # views/registrations/new.html.erb
    end
  end

  private 

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
    # means:  these are the only things we allow you to set
  end
end