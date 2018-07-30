class CreateExistents < ActiveRecord::Migration[5.2]
  def change
    create_table :existents do |t|
      t.string :name
      t.string :image_url
      t.array :details

      t.timestamps
    end
  end
end
