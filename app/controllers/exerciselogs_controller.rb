class ExerciselogsController < ApplicationController
    # before_action :get_exerciselog, only: [:show, :edit, :update, :destroy]

    def index
        @exerciselogs = ExerciseLog.all
    end 

    def new
        @exerciselog = ExerciseLog.new
        @lifters =Lifter.all
        @exercises = Exercise.all
    end

    def create
        exerciselog_params = params.require(:exerciselog).permit(:reps, :weight, :lifter_id, :exercise_id)
        @exerciselog = ExerciseLog.create(exerciselog_params)

        exerciselog = ExerciseLog.find(params[:exerciselog][:lifter_id])

        redirect_to lifter_path(lifter)
    end

    def update
        @exerciselog.update(exercise_params)
        redirect_to exerciselog_path(@exerciselog)
    end
    

    def show
        @exerciselog = ExerciseLog.find(params[:id])
    end

    def destroy
        @exerciselog.destroy
        redirect_to exerciselogs_path
    end

    # def create
    #     @exerciselog = ExerciseLog.new
    #     @exerciselog.reps = params[:reps]
    #     @exerciselog.weight = params[:weight]
    #     @exerciselog.save
    #     redirect_to exerciselog_path(@exerciselog)
    # end

    private
      def get_exerciselog
        @exerciselog = ExerciseLog.find(params[:id])
      end
    
      def exerciselog_params
        params.require(:exerciselog).permit(:reps, :weight, :lifter_id, :exercise_id)
      end
    

    # def new
    #     @exerciselog = ExerciseLog.new
    #     @lifters = Lifter.all
    #     @exercises = Exercise.all
    # end

    # def create
    #     # byebug
    #     exerciselog_params = params.require(:exerciselog).permit(:reps, :weight, :lifter_id, :exercise_id)
    #     @exerciselog = ExerciseLog.create(exerciselog_params)

    #     lifter = Lifter.find(params[:exerciselog][:lifter_id])

    #     redirect_to lifter_path(lifter)
    # end
    
end
