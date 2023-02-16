class SessionsController < ApplicationController

  def create 
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to welcome_path(user.first_name)
    else

      render 'new'
    end
  end
  def destroy
    session.delete(:user_id)
    redirect_to "/sessions/new"
  end
end

# class SessionsController < ApplicationController
#   # def new
#   #   @user = User.new
#   # end

#   def create
#     # cherche s'il existe un utilisateur en base avec l’e-mail
#     puts 'CREATTTEEEEEEEEE'
#     user = User.find_by(email: params[:email])

#     puts 'PPPAAAAAARRRRRRRRRRAAAAAAAMMMMMSSSSS'
#     p params
#     # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe

#     if user && user.authenticate(params[:password])
#       puts 'OOOKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK'

#       session[:user_id] = user.id
#       redirect_to root_path
#     else
#       flash.now[:danger] = 'Invalid email/password combination'
#       render 'new'
#     end
#   end

#   def destroy
#     redirect_to root_path
#   end
# end
