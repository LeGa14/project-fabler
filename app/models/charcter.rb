class Charcter < ApplicationRecord
    has_many :props, dependent: :destroy
end
