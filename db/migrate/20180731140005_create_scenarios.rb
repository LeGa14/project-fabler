class CreateScenarios < ActiveRecord::Migration[5.2]
  def change
    create_table :scenarios do |t|
      t.string :title
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
