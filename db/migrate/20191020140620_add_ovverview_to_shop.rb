class AddOvverviewToShop < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :overview, :string
  end
end
