class TeamsController < ApplicationController
  skip_before_action :authenticate_developer!, only: [:index, :show]
  def index
    @teams = policy_scope(Team)
  end

  def show
    @team = Team.find(params[:id])
    authorize @team
  end

  private
  def team_params
    params.require(:team).permit(:developer_id, :project_id)
  end
end
