class Exercise < ApplicationRecord
    has_many :exercise_logs, dependent: :destroy
    has_many :lifters, through: :exercise_logs
end
