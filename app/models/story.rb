class Story < ApplicationRecord
  belongs_to :scenario
  belongs_to :existent
  belongs_to :event
  belongs_to :setting
  belongs_to :character
  belongs_to :prop
end
