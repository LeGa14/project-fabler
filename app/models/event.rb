class Event < ApplicationRecord
    belongs_to :scenario, dependent: :destroy, optional: true
end
