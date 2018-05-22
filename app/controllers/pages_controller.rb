class PagesController < ApplicationController
  def index
     if admin_session
    redirect_to admins_path
    elsif teacher_session
     redirect_to teachers_path
    elsif student_session
    redirect_to students_path
    else
      root_path
    end
    @words = self.random_select(@welcome_words)

    end

    def random_select(array)
      @welcome_words = %w("Action", "Believe", "Clarity", "Dare",
        "Encourage", "Hope", "Think", "Understand", "Value", "Excellence",
        "Creative", "Dashing", "Improve", "Joy", "Kindness", "Mindfulness",
        "Practice", "Smile", "Shine", "Laugh", "Dream",
        "Positivity", "Nurture", "Listen")
      end

    end
