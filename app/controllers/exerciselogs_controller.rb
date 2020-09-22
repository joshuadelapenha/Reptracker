class ExerciselogsController < ApplicationController
    def index
        @exerciselogs = ExerciseLog.all
    end 

    def show
        @exerciselog = ExerciseLog.find(params[:id])
    end

    def new
        @exerciselog = ExerciseLog.new
    end
    

    def create
        @exerciselog = ExerciseLog.new
        @exerciselog.reps = params[:reps]
        @exerciselog.weight = params[:weight]
        @exerciselog.save
        redirect_to exerciselog_path(@exerciselog)
    end
    
end
