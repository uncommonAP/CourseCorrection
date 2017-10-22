class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :course, unique: true

      t.timestamps
    end
  end
end
