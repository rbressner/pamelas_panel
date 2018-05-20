class PagesController < ApplicationController
  def index
    @admin = Admin.find_by(username: params[:username])
    @teacher = Teacher.find_by(username: params[:username])
    @student = Student.find_by(username: params[:username])
    if @admin && @admin.password == params[:password] && @admin.user_type == params[:user_type]
      session[:admin_id] = @admin.id
      redirect_to(admins_path)
    elsif @teacher && @teacher.password == params[:password] && @teacher.user_type == params[:user_type]
      session[:teacher_id] = @teacher.id
      redirect_to(teachers_path)
    elsif @student && @student.password == params[:password] && @student.user_type == params[:user_type]
      session[:student_id] = @student.id
      redirect_to(students_path)
    else
      flash[:notice] = "Sorry, one or more of the fields is incorrect"
    end
  end
end
