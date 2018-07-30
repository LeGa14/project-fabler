class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :subject
      t.string :action
      t.string :object

      t.timestamps
    end
  end
end
