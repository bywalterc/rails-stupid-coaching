# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    last_index = @question.length - 1
    if @question == 'I am going to work'
      @answer = 'Great'
    elsif @question[last_index] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
