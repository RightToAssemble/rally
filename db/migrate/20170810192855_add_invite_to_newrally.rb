class AddInviteToNewrally < ActiveRecord::Migration[5.1]
  def change
  	add_column :newrallies, :invite, :string
  end
end
