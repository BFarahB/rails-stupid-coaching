class QuestionsController < ApplicationController

  def ask
  end

  def answer
     # recuperer la question
    @question = params[:question]
    @answer = coach(@question)

  # trouver la réponse
  end

  def coach(question)
    if question == 'i am going to work right now!'
      return 'Great!'
    elsif question.end_with?('?')
      return  'Silly question, get dressed and go to work!'
    else
      return  "I don't care, get dressed and go to work!"
    end
  end
end
