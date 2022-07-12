class QuestionsController < ApplicationController
  def ask; end

  def answer
    msg = params[:question]

    @coach_answer = if msg == 'I am going to work'
                      'Great!'
                    elsif msg[-1] == '?'
                      'Silly question, get dressed and go to work!.'
                    else
                      "I don't care, get dressed and go to work!"
                    end
  end
end
