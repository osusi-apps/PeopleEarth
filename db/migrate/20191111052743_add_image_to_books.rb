class AddImageToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :image_name, :varchar
  end
end
