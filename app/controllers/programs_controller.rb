class ProgramsController < ApplicationController 
    def index 
        @programs = Program.all 
    end 

    def new 
        @program = Program.new
    end 

    def create 
        @program = Program.new(program_params)
        if @program.save 
            redirect_to new_program_circuit_path(@program)
        else 
            render :new 
        end
    end 

    private 

    def program_params 
        params.require(:program).permit(:name) 
    end 
end 