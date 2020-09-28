class ExerciselogsController < ApplicationController
    # def index
    #     @exerciselogs = ExerciseLog.all
    # end 

    def new
        @exerciselog = ExerciseLog.new
        @lifters = Lifter.all
        @exercises = Exercise.all
    end

    def create
        # byebug
        exerciselog_params = params.require(:exerciselog).permit(:reps, :weight, :lifter_id, :exercise_id)
        @exerciselog = ExerciseLog.create(exerciselog_params)

        lifter = Lifter.find(params[:exerciselog][:lifter_id])

        redirect_to lifter_path(lifter)
    end
    
end
