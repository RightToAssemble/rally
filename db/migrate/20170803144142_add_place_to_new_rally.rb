class AddPlaceToNewRally < ActiveRecord::Migration[5.1]
  def change
  	add_column :new_rallies, :city, :string
  	add_column :new_rallies, :country, :string
  end
end
