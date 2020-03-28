class RemoveImageNameFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :image_name, :string
  end
end
