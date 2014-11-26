class QuestionsController < ApplicationController

  before_action(:find_question, except: [:index, :quiz])
  
  def index
    render :json => Question.all
  end

  def quiz

  end

  def show
    render :json => @question
  end

  def verify
    render :json => {correct: @question.answer == params[:answer]}
  end

  def render_not_found(error_message)
    render :json => {message: error_message}, status: 404
  end

  def find_question
    @question = Question.find_by(id: params[:id])
    if !@question
      render_not_found("Question not found")
    end
  end

end
