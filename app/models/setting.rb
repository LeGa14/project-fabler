class Setting < ApplicationRecord
    has_many :props, dependent: :destroy
end
