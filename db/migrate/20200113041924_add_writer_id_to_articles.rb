class AddWriterIdToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :writer_id, :integer
  end
end
