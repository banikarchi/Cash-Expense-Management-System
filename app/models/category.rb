class Category < ApplicationRecord
    belongs_to:user
    belongs_to:budgetplaner, :optional=>true
end
