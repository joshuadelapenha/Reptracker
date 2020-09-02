
class CreateLifters < ActiveRecord::Migration[4.2]
    def change
      create_table :Lifters do |t|
        t.string :name
        t.integer :age
      end
    end
  end