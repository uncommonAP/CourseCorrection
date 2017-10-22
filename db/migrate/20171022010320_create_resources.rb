class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.belongs_to :skill, null: false
      t.belongs_to :example

      t.timestamps
    end
  end
end
