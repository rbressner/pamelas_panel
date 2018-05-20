class PagesController < ApplicationController
  def index
    @admin = Admin.find_by(username: params[:username])
    @teacher = Teacher.find_by(username: params[:username])
    @student = Student.find_by(username: params[:username])
    if @admin && @admin.password == params[:password] && @admin.user_type == params[:user_type]
    session[:admin_id] = @admin.id
    redirect "/admins"
  else

  end
  if @teacher && @teacher.password == params[:password] && @teacher.user_type == params[:user_type]
  session[:teacher_id] = @teacher.id
else

  end
  if @student && @student.password == params[:password] && @student.user_type == params[:user_type]
    session[:student_id] = @student.id
  else

  end
  end
end
