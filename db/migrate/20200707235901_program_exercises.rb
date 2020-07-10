class ProgramExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :program_exercises do |t|
      t.integer :program_id 
      t.integer :exercise_id
    end 
  end
end
