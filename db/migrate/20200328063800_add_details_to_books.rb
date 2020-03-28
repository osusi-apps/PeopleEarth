class AddDetailsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :image_url, :string
    add_column :books, :url, :string
  end
end
