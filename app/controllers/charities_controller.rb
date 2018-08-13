class CharitiesController < ApplicationController
  before_action :authenticate_charity!, only: [:dashboard]

  def index
    @charities = Charity.all
    # @charities.each do |charity|
    #   charity.geocode
    #   charity.save
    # end
    @charities = Charity.where.not(latitude: nil, longitude: nil)

    @markers = @charities.map do |charity|
      {
        lat: charity.latitude,
        lng: charity.longitude#,
        # infoWindow: { content: render_to_string(partial: "/carities/map_box", locals: { charity: charity }) }
      }
    end
  end

  def dashboard
    @charity = current_charity
    @projects = @charity.projects
    @proposals = @charity.proposals # ??? proposals for project
  end
end
