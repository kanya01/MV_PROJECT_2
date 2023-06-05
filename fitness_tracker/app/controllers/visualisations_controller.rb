class VisualizationsController < ApplicationController
    def workouts_over_time
      user = current_user # Assuming user authentication is implemented
      workouts = user.activities.group_by_day(:created_at).count
  
      render json: { workouts: workouts }
    end
  end