class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :writer
      t.date :date
      t.string :text

      t.timestamps
    end
  end
end
