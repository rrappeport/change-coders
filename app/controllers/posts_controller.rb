class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:post][:content], project_id: params[:project_id])
    @project = Project.find(params[:project_id])
    # authorize @post
    if @post.save
      redirect_to projects_dashboard_path(@project)
    else
      render :new
    end
  end

  def destroy
    @post =Post.find(params[:id])
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:content, :project_id)
  end
end
