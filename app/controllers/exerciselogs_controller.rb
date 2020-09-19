class ExerciselogsController < ApplicationController
    def index
        @exerciselogs = ExerciseLog.all
    end 
end
