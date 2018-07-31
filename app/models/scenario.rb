class Scenario < ApplicationRecord
  belongs_to :story
  has_many :existents, dependent: :destroy
  has_many :events, dependent: :destroy
end
