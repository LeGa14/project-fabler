class Character < ApplicationRecord
    has_many :props, dependent: :destroy    
end
