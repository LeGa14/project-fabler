class Happening < Event
    belongs_to :scenario, dependent: :destroy
end
