class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    @answers = [ "Great!",
    "Silly question, get dressed and go to work!",
    "I don't care, get dressed and got to work"
    ]

    if @question == "I'm going to work"
      @answer = @answers[0]
    elsif @question.include?("?")
      @answer = @answers[1]
    else
      @answer = @answers[2]
    end
  end
end
