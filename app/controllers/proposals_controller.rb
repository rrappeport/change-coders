class ProposalsController < ApplicationController

  def create
    @proposal = Proposal.new
    @project = Project.find(params[:project_id])
    @proposal.project = @project
    authorize @proposal
    @proposal.developer = current_developer
    if @proposal.save
      redirect_to developer_dashboard_path
      flash[:notice] = "Thanks for applying!"
    else
      render 'project_path(@project)', flash[:alert] = "Error"
    end
  end

  def accept
    @project = Project.find(params[:project_id])
    @proposal = Proposal.find(params[:proposal])
    @proposal.state = "Accepted"
    @proposal.save!
    redirect_to projects_dashboard_path(@project)
  end

end

