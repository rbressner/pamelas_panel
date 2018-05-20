class PagesController < ApplicationController
  def index
    @welcome_words = ["Action", "Believe", "Clarity", "Dare",
      "Encourage", "Hope", "Think", "Understand", "Value", "Excellence",
      "Creative", "Dashing", "Improve", "Joy", "Kindness", "Mindfulness",
      "Practice", "Smile", "Shine", "Laugh", "Dream",
      "Positivity", "Nurture", "Listen"]
      @words = @welcome_words.shuffle.first

    end

    # def words
    #   welcome_words = ["Action", "Believe", "Clarity", "Dare",
    #     "Encourage", "Hope", "Think", "Understand", "Value", "Excellence",
    #     "Creative", "Dashing", "Improve", "Joy", "Kindness", "Mindfulness",
    #     "Practice", "Smile", "Shine", "Laugh", "Dream",
    #     "Positivity", "Nurture", "Listen"]
    #   end
    end
