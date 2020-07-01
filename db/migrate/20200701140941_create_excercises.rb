class CreateExcercises < ActiveRecord::Migration[6.0]
  def change
    create_table :excercises do |t|
      t.string :muscle
      t.float :weight
      t.string :equipment 
      t.string :description 
      t.integer :sets
      t.integer :reps 
      t.timestamps
    end
  end
end
