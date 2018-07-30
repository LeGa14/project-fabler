class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :type
      t.references :scenario, foreign_key: true
      t.references :existent, foreign_key: true
      t.references :event, foreign_key: true
      
      t.timestamps
    end
  end
end
