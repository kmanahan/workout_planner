class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle
      t.string :equipment
      t.string :description
      t.integer :sets 
      t.integer :reps 
      t.integer :circuit_id
    end
  end
end
