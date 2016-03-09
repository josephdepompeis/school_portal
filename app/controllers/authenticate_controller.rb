class AuthenticateController < ApplicationController
  def login
   if request.post?
     user = User.find_by(username: params[:username])
     if user && user.authenticate(params[:password]) && user.role == "teacher"
       redirect_to user_path(user), notice: "Login Success!"
     else
       flash[:notice] = "You gotta do better than that!"
     end
   end
 end

  def logout
    session[:user_id] = nil
    redirect to authenticate_login_path, notice: "You iz l0gg3d owt"
  end
end
