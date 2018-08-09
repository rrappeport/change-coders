class ProjectsController < ApplicationController
  before_action :authenticate_developer!, only: [:show, :index]
  before_action :authenticate_charity!, only: [:new, :create, :edit, :update]
end
