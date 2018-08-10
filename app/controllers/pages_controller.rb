class PagesController < ApplicationController
  skip_before_action :authenticate_developer!, only: [:home]
  def home
  end
end
