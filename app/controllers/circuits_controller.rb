class CircuitsController < ApplicationController 
    def index 
        @program = Program.find_by(id:params[:program_id])
    end 

    def new 

    end 
     
    def create 
    end 
end 