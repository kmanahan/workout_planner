class Circuit < ApplicationRecord
    has_many :excercises
    has_many :excercises, through: :circuitexcercises
    belongs_to :program
end
