class DashboardController < ApplicationController
  def index

  end

  def show
    @projects = Tracker.new.get_projects
  end

end