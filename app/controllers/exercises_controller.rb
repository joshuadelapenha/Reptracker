class ExercisesController < ApplicationController
    def index
        @exercises = Exercise.all
    end 

    def show
        @exercise = Exercise.find(params[:id])
    end

    def new
        @exercise = Exercise.new
    end
    

    def create
        @exercise = Exercise.new
        @exercise.name = params[:name]
        @exercise.category = params[:category]
        @exercise.save
        redirect_to exercise_path(@exerciselog)
    end

end
