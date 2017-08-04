class CreateNewRally < ActiveRecord::Migration[5.1]
  def change
    create_table :new_rallies do |t|
    	t.string :title
    	t.text :description
    	t.string :organization
    	t.timestamps
    end
  end
end
