class ProposalsController < ApplicationController

  def create
    @proposal = Proposal.new
    @project = Project.find(params[:project_id])
    @proposal.project = @project
    authorize @proposal
    @proposal.developer = current_developer
    if @proposal.save
      redirect_to dashboard_path
    else
      render project_path(@project)
      flash[:alert] = "Error"
    end
  end

end

