class AddProgramIdToCircuits < ActiveRecord::Migration[6.0]
  def change
    add_column :circuits, :program_id, :integer
  end
end
