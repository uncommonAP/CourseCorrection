class CreateDirectories < ActiveRecord::Migration[5.1]
  def change
    create_table :directories do |t|
      t.belongs_to :skill
      t.belongs_to :style

      t.timestamps
    end
    add_index :directories, [:skill_id, :style_id], unique: true
  end
end
