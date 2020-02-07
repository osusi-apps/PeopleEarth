class RemoveWriterFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :writer, :string
  end
end
