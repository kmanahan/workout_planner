class Exercise < ApplicationRecord
    has_many :user_exercises 
    has_many :users, through: :user_exercises 
    has_many :circuit_exercises
    has_many :circuits, through: :circuit_exercises
    has_many :program_exercises 
    has_many :programs, through: :program_exercises
end
