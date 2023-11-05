class MainController < ApplicationController
  def index
    flash.now[:notice]= "Logged in successfully"
    # .now para o flash não persistir no proximo request e vai funcionar somente na página atual
    flash[:alert]= "Invalid email or password"
  end
end
