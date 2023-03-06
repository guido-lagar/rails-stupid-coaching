class QuestionController < ApplicationController
  def ask
  end

  def answer
    @answer1 = 'Great!'
    @answer2 = 'Silly question, get dressed and go to work!'
    @answer3 = "I don't care, get dressed and go to work!"
    if params[:ask] == 'I am going to work'
      @answer = @answer1
    elsif params[:ask].ends_with?('?')
      @answer = @answer2
    else
      @answer = @answer3
    end
  end
end
