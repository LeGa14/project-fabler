class AddExistentToScenario < ActiveRecord::Migration[5.2]
  def change
    add_reference :scenarios, :existent, foreign_key: true
  end
end
