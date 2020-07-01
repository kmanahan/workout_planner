class CreateCircuits < ActiveRecord::Migration[6.0]
  def change
    create_table :circuits do |t|

      t.timestamps
    end
  end
end
