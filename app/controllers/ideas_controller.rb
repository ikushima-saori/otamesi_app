class IdeasController < ApplicationController
  def new
    @idea = Idea.new
  end

  def show
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def create
    idea = Idea.new(idea_params)
    idea.user_id = current_user.id
    idea.save
    redirect_to edit_idea_path(idea.id)
  end

  def update
   idea = Idea.find(params[:id])
   idea.update(idea_params)
   redirect_to edit_idea_path(idea.id)
  end

  private
  def idea_params
    params.require(:idea).permit(:category, :tag, :body)
  end
end
