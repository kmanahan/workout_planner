class Program < ApplicationRecord
    # belongs_to :user 
    has_many :circuits 
    has_many :program_exercises 
    has_many :exercises, through: :program_exercises
    validates_presence_of :name
end
