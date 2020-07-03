class Program < ApplicationRecord
    # belongs_to :user 
    has_many :circuits 
    has_many :programexercises 
    has_many :exercises, through: :circuits
    validates_presence_of :name
end
