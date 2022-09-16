class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    @coach_answer = "I don't care, get dressed and go to work!"
    @coach_answer = '' if @question.downcase == 'i am going to work right now!'
    @coach_answer = 'Silly question, get dressed and go to work!' if @question.end_with?('?')
  end
end
