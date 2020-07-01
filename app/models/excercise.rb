class Excercise < ApplicationRecord
    has_many :userexercises 
    has_many :circuitexercises 
    has_many :users, through: :userexercises 
    has_many :circuits, through: :circuitexercises 
    has_many :programexercises 
    has_many : programs, through: :programexercises
end