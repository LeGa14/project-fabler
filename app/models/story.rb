class Story < ApplicationRecord
  has_many :scenarios, dependent: :destroy
end
