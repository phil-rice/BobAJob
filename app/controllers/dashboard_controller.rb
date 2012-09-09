class DashboardController < ApplicationController
  def index 
    @jobbers = Jobber.all
  end
end
