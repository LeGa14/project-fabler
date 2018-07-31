class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :subject
      t.string :action
      t.string :object
      t.string :event_type
      t.references :scenario, foreign_key: true

      t.timestamps
    end
  end
end
