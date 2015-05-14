class QuestionsController < ApplicationController
  def index
    @questions = Post.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def resolved
    @question = Question.new(params.require(:question).permit(:title, :body))
  end
end