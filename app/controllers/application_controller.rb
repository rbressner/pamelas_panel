class ApplicationController < ActionController::Base
  private

  def after_sign_in_path_for(resource)
    if current_admin
       admins_path
     elsif current_teacher
       teachers_path
     elsif current_student
       students_path
     end
    end

  def after_sign_out_path_for(resource_or_scope)
      if resource_or_scope == :admin || :teacher || :student
        root_path
      end
    end
end
