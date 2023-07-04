class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #We save the informaton with user_params
    @user = User.new(user_params)
    if @user.save
      #Save the session of the user
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created account"
    else
      flash[:alert] = "Error al registrar el usuario"
      render :new
    end
  end

  private 

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end