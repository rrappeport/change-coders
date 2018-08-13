class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @project = Project.find(params[:project_id])
    @post.project = @project
    @post.developer = current_developer
    # authorize @post
    if @post.save
      redirect_to projects_dashboard_path(@project)
    else
      flash[:alert] = "Please try again"
      redirect_to projects_dashboard_path(@project)
    end
  end

  def destroy
    @post =Post.find(params[:id])
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:content, :project_id, :developer_id)
  end
end
