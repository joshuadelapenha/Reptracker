
class CreateExceriseLogs < ActiveRecord::Migration[4.2]
    def change
      create_table :ExcerciseLogs do |t|
        t.integer :reps
        t.interger :weight
      end
    end
  end