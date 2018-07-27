class CreateProps < ActiveRecord::Migration[5.2]
  def change
    create_table :props do |t|
      t.string :name
      t.string :image_url
      t.references :setting, foreign_key: true
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
