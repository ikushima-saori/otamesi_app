class IdeasController < ApplicationController
  def new
    @idea = Idea.new
  end

  def show
  end

  def edit
  end

  def create
    idea = Idea.new(idea_params)
    idea.user_id = current_user.id
    idea.save
    redirect_to idea_path(idea.id)
  end

  private
  def idea_params
    params.require(:idea).permit(:category, :tag, :body)
  end
end
