class AddOverviewToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :overview, :string
  end
end
