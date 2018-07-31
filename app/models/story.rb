class Story < ApplicationRecord
  has_many :scenarios, dependent: :destroy
  has_many :settings, through: :scenarios
  has_many :characters, through: :scenarios
  has_many :props, through: :scenarios
  
  has_many :events, through: :scenarios
  has_many :happenings, through: :scenarios
end
