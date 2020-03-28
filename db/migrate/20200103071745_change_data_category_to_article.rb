class ChangeDataCategoryToArticle < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :category, :integer USING CAST(column_name AS integer)
  end
end
