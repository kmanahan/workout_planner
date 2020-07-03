class AddExerciseIdToCircuits < ActiveRecord::Migration[6.0]
  def change
    add_column :circuits, :exercise_id, :integer
  end
end
