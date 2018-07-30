class Scenario < ApplicationRecord
    has_one :setting, dependent: :destroy
    has_many :existents, dependent: :destroy
    has_many :events, dependent: :destroy
    has_many :happenings, dependent: :destroy
end
