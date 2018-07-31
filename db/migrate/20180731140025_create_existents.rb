class CreateExistents < ActiveRecord::Migration[5.2]
  def change
    create_table :existents do |t|
      t.string :name
      t.string :image_url
      t.string :subject_type
      t.references :scenario, foreign_key: true

      t.timestamps
    end
  end
end
