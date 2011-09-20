class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])

    if @comment.save
      redirect_to @comment.idea, notice: 'Comment was successfully created.'
    else
      render action: "new"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to idea_url(@comment.idea)
  end
end
