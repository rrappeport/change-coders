class MembersController < ApplicationController

  def destroy
    @member = Member.find(params[:id])
    # byebug

    authorize @member
    @member.destroy
    redirect_to projects_dashboard_path(params[:project_id])
    flash[:alert] = "#{Developer.find(@member.developer_id).first_name.capitalize} was removed from the project"
  end
end
