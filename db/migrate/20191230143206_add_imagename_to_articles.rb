class AddImagenameToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :image_name, :string
  end
end
