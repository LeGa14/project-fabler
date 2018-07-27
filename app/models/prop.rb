class Prop < ApplicationRecord
  belongs_to :setting, optional: true
  belongs_to :character, optional: true
end
