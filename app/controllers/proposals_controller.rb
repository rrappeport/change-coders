class ProposalsController < ApplicationController

  def create
    @proposal = Proposal.new
    @project = Project.find(params[:project_id])
    @proposal.project = @project
    authorize @proposal
    @developer = current_developer
    if @proposal.save
      # CharityMailer.new_request(@project, @developer).deliver_now
      redirect_to developer_dashboard_path
      flash[:notice] = "Thanks for applying!"
    else
      redirect_to project_path(@project)
      flash[:alert] = "Error"
    end
  end

  def accept
    @project = Project.find(params[:project_id])
    @proposal = Proposal.find(params[:proposal])
    @proposal.state = "Accepted"
    if @proposal.save!
      member = Member.new
      member.developer = @proposal.developer
      member.project = @project
      member.save!
      @project.leader_id = member.developer_id
      @project.save!
    end
      redirect_to projects_dashboard_path(@project)
  end

  def reject
    @project = Project.find(params[:project_id])
    @proposal = Proposal.find(params[:proposal])
    @proposal.state = "Rejected"
    @proposal.save!
    redirect_to projects_dashboard_path(@project)
  end

end

