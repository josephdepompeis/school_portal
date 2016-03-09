class AuthenticateController < ApplicationController
  def login
   if request.post?
     user = User.find_by(username: params[:userame])
     if user.authenticate(params[:password])
       redirect_to teachers_path, notice: "Login Success!"
     else
       flash[:notice] = "You gotta do better than that!"
     end
   end
 end

  def logout
  end
end
