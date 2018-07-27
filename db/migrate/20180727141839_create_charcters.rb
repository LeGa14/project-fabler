class CreateCharcters < ActiveRecord::Migration[5.2]
  def change
    create_table :charcters do |t|
      t.string :name

      t.timestamps
    end
  end
end
