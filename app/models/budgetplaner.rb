class Budgetplaner < ApplicationRecord
    belongs_to:user
    has_many:category
end
