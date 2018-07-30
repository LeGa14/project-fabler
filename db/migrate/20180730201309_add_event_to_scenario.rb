class AddEventToScenario < ActiveRecord::Migration[5.2]
  def change
    add_reference :scenarios, :event, foreign_key: true
  end
end
