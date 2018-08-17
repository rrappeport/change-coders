class ProposalsController < ApplicationController

  def create
    @proposal = Proposal.new
    authorize @proposal
    @project = Project.find(params[:project_id])
    @proposal.project = @project
    # authorize @proposal
    @proposal.developer = current_developer
    @developer = current_developer
    if @proposal.save
      flash[:notice] = "Thanks for applying!"
      redirect_to developer_dashboard_path
    else
      flash[:alert] = "Error"
      redirect_to project_path(@project)
    end
  end

  def accept
    @project = Project.find(params[:project_id])
    # Control acception by Pundit
    @proposal = Proposal.find(params[:proposal])
    authorize @proposal
    @proposal.accept
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
    authorize @proposal
    @proposal.state = "Rejected"
    @proposal.save!
    redirect_to projects_dashboard_path(@project)
  end

end

