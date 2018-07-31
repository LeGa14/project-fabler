class Character < Existent
    has_many :props, as: :proppable
end
