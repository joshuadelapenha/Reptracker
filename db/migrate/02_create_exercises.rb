
class CreateExercises < ActiveRecord::Migration[4.2]
    def change
      create_table :Exercises do |t|
        t.string :name
        t.string :category
      end
    end
  end