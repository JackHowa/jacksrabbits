class CreateRabbitsTable < ActiveRecord::Migration[5.0]
  def change
  	create_table :rabbits do |t|
  		t.string :name, null: false 
  		t.string :color 

  		t.timestamps null: false 
  	end 
  end
end
