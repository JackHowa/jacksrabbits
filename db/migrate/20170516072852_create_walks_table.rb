class CreateWalksTable < ActiveRecord::Migration[5.0]
  def change
	  create_table :walks do |t|
      t.integer :user_id,  :null => false
      t.integer :rabbit_id, :null => false

      t.timestamps
    end

    add_index :walks, [:user_id, :rabbit_id], :unique => true
    add_index :walks, :rabbit_id
  end
end
