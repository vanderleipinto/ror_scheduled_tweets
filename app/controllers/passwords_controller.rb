class PasswordsController < ApplicationController
before_action :require_user_logged_in!
# esse método (require_user_logged_in!) está na classe pai ApplicationController

  def edit
  end

  def update
    if Current.user.update(password_params)
        redirect_to root_path, notice: "Password Updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
