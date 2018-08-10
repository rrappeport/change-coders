class CharitiesController < ApplicationController
  def index
    @charities = Charity.all
    @carities = Charity.where.not(latitude: nil, longitude: nil)

    @markers = @carities.map do |charity|
      {
        lat: charity.latitude,
        lng: charity.longitude#,
        # infoWindow: { content: render_to_string(partial: "/carities/map_box", locals: { charity: charity }) }
      }
    end
  end
end
