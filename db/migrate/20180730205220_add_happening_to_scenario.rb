class AddHappeningToScenario < ActiveRecord::Migration[5.2]
  def change
    add_reference :scenarios, :happening, foreign_key: true
  end
end
