class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :examples do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.text :description

      t.timestamps
    end
  end
end
