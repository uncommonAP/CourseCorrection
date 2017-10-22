class CreateProstyles < ActiveRecord::Migration[5.1]
  def change
    create_table :prostyles do |t|
      t.belongs_to :style
      t.belongs_to :profile
    end
    add_index :prostyles, [:style_id, :profile_id], unique: true
  end
end
