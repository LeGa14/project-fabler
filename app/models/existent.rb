class Existent < ApplicationRecord
    belongs_to :scenario, dependent: :destroy
end
