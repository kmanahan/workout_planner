class Circuit < ApplicationRecord
    has_many :circuit_exercises
    has_many :exercises, through: :circuit_exercises
    belongs_to :program
    validates_presence_of :name
end

# def total_weight 
#     self.exercises.sum do |exercise| 
#         exercise.weight 
#     end 