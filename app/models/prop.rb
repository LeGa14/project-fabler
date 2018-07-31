class Prop < Existent
    belongs_to :proppable, polymorphic: true, optional: true
end
