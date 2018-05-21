class ApplicationController < ActionController::Base
  private

  def after_sign_out_path_for(resource_or_scope)
      if resource_or_scope == :admin || :teacher || :student
        root_path
      end
    end
end
