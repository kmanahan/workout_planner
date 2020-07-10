class CircuitExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :circuit_exercises do |t|
      t.integer :circuit_id 
      t.integer :exercise_id
    end 
  end
end
