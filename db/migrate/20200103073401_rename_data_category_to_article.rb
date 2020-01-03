class RenameDataCategoryToArticle < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :category, :category_id
  end
end
