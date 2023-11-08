class MainController < ApplicationController
  def index
    # flash.now[:notice]= "Logged in successfully"
    # # .now para o flash não persistir no proximo request e vai funcionar somente na página atual
    # flash[:alert]= "Invalid email or password"


    #autenticação de sessão foi removida para application_controller para rodar em todaa aplicação 
    # if session[:user_id]
      # @user = User.find(session[:user_id]) se o usuário for apagado esse find vai gerar erro e parar o sistem. usaremos o find_by
      # @user = User.find_by(id: session[:user_id])
    # end
  end
end
