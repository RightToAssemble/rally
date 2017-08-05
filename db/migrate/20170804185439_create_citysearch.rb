class CreateCitysearch < ActiveRecord::Migration[5.1]
  def change
    create_table :citysearches do |t|
    	t.string :citysearch
    end
  end
end
