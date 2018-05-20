class PagesController < ApplicationController
  def index

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
