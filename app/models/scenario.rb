class Scenario < ApplicationRecord
    has_one :setting, depenedent: :destroy
    has_many :existents, depenedent: :destroy
    has_many :events, depenedent: :destroy
    has_many :happenings, depenedent: :destroy
end
