class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(question)
    if question == 'I am going to work now!'
      'Great!'
    elsif question.include?('?')
      'Silly question! Get dressed and go to work'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
