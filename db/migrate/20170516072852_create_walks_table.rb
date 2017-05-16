class CreateWalksTable < ActiveRecord::Migration[5.0]
  def change
	  create_table :walks do |t|
      t.references :user
      t.references :rabbit
      t.string :location

      t.timestamps
    end
  end
end
