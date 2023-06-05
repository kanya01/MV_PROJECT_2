# app/controllers/nutritions_controller.rb
class NutritionsController < ApplicationController
    def index
      @nutritions = Nutrition.all
    end
  
    def show
      @nutrition = Nutrition.find(params[:id])
    end
  
    def new
      @nutrition = Nutrition.new
    end
  
    def create
      @nutrition = Nutrition.new(nutrition_params)
      if @nutrition.save
        redirect_to nutrition_path(@nutrition), notice: 'Nutrition was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      @nutrition = Nutrition.find(params[:id])
    end
  
    def update
      @nutrition = Nutrition.find(params[:id])
      if @nutrition.update(nutrition_params)
        redirect_to nutrition_path(@nutrition), notice: 'Nutrition was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @nutrition = Nutrition.find(params[:id])
      @nutrition.destroy
      redirect_to nutritions_path, notice: 'Nutrition was successfully destroyed.'
    end
  
    private
  
    def nutrition_params
      params.require(:nutrition).permit(:calories, :carbohydrates, :proteins, :fats, :user_id)
    end
  end
  