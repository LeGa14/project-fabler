class Scenario < ApplicationRecord
    has_many :existents, depenedent: :destroy
    has_many :events, depenedent: :destroy
end
