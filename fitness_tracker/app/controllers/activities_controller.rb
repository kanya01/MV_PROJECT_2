# app/controllers/activities_controller.rb
class ActivitiesController < ApplicationController
    def index
      @activities = Activity.all
    end
  
    def show
      @activity = Activity.find(params[:id])
    end
  
    def new
      @activity = Activity.new
    end
  
    def create
      @activity = Activity.new(activity_params)
      if @activity.save
        redirect_to activity_path(@activity), notice: 'Activity was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      @activity = Activity.find(params[:id])
    end
  
    def update
      @activity = Activity.find(params[:id])
      if @activity.update(activity_params)
        redirect_to activity_path(@activity), notice: 'Activity was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @activity = Activity.find(params[:id])
      @activity.destroy
      redirect_to activities_path, notice: 'Activity was successfully destroyed.'
    end
  
    private
  
    def activity_params
      params.require(:activity).permit(:exercise, :sets, :repetitions, :weight, :user_id)
    end
  end
  