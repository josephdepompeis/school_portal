class AuthenticateController < ApplicationController
  def login
   if request.post?
     user = User.find_by(username: params[:username])
     if user && user.authenticate(params[:password]) && user.role == "teacher"
       session[:teacher_id] = user.teacher_id
       redirect_to user_path(user), notice: "Login Success!"

     elsif user && user.authenticate(params[:password]) && user.role == "student"
       session[:student_id] = user.student_id
       redirect_to user_path(user), notice: "Login Success!"

     elsif user && user.authenticate(params[:password]) && user.role == "parent"
       session[:parent_id] = user.parent_id
      #  session[:student_id] = Parent.where(student_id: Parent.find(user.parent)
       redirect_to user_path(user), notice: "Login Success!"
     else
       flash[:notice] = "You gotta do better than that!"
     end
   end
 end

  def logout
    session[:teacher_id] = nil
    session[:parent_id] = nil
    session[:student_id] = nil
    redirect_to authenticate_logout_path, notice: "You iz l0gg3d owt"
  end
end
