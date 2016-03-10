class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
    def authenticate
      if session[:student_id].nil? && session[:teacher_id].nil? && session[:parent_id].nil?
        redirect_to authenticate_login_path, notice: "MUST BE LOGGED IN"
      end
    end

    def authenticate_teacher
      if session[:teacher_id]
      else
        redirect_to students_url, notice: "You are not qualified to view that!"
      end
    end


    def authenticate_parent
      if session[:parent_id]
      else
        redirect_to students_url, notice: "You are not qualified to view that!"
      end
    end

    def authenticate_student
      if session[:student_id]
      else
        redirect_to students_url, notice: "You are not qualified to view that!"
      end
    end

    def authenticate_student_belongs_to_parent_teacher
    if @student.teacher_id == session[:teacher_id] || @student.parent_id == session[:parent_id]
    else redirect_to students_url, notice: "You are not qualified to view that!"
    end
  end


end
