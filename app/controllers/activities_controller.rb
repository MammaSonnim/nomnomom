class ActivitiesController < ApplicationController
  def index
    @activities = Activity.order(created_at: :desc)
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      flash[:success] = 'Activity has beed added sucessfully'
      # new request 
      redirect_to activity_path(@activity)
    else
      flash[:failure] = 'Activity has not been added'
      # same request, but updated template, params stay the same
      render :new
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      flash[:success] = 'Activity has beed updated sucessfully'
      redirect_to activity_path(@activity)
    else
      flash[:failure] = 'Activity has not been updated'
      render :edit
    end
  end

  def destroy
    debugger
    @activity = Activity.find(params[:id])

    if @activity.destroy
      flash[:success] = 'Activity has beed deleted sucessfully'
      redirect_to root_path
    else
      flash[:failure] = 'Activity has not been deleted'
      render activity_path(@activity)
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :value, :size)
  end
end
pp