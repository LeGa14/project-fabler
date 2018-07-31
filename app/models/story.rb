class Story < ApplicationRecord
    has_many :scenarios, dependent: :destroy
    has_many :existents through: :scenarios
    has_many :events through: :scenarios
end
