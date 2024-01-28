class ActivitiesController < ApplicationController
  def index
    @activities = Activity.order(created_at: :desc)
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
