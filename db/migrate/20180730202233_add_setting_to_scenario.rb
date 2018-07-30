class AddSettingToScenario < ActiveRecord::Migration[5.2]
  def change
    add_reference :scenarios, :setting, foreign_key: true
  end
end
