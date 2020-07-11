class CircuitsController < ApplicationController 
    def index 
        get_program
    end 

    def show 
        #refactor?
        @circuit = Circuit.find(params[:id])
    end 
   
    def new 
        get_program
        redirect_to programs_path if !@program
        @circuit = Circuit.new
    end 
     
    def create 
        @program = Program.find_by(id: params[:circuit][:program_id])
        @circuit = Circuit.new(circuit_params)
        if @circuit.save
            redirect_to program_circuit_path(@program, @circuit)
        else 
            render :new
        end
    end 

    private 

    def get_program 
    @program ||= Program.find_by(id:params[:program_id])
    end  

    def circuit_params 
        params.require(:circuit).permit(:exercise_ids, :name, :day, :program_id)
    end 
end 