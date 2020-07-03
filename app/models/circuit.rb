class Circuit < ApplicationRecord
    has_many :exercises
    # has_many :excercises, through: :circuitexcercises
    belongs_to :program

    def total_weight 
        self.exercises.sum do |excercise| 
            excercise.weight 
        end 
    end 
end
