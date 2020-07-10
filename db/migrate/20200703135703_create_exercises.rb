class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscles
      t.string :equipment
      t.string :description
      t.integer :sets 
      t.integer :reps 
    end
  end
end
