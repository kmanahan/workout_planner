class ExerciseController < ApplicationController 
    def index 
        get_program
    end 

    def show 
        get_program
    end 
   
    def new 
        get_program
        redirect_to programs_path if !@program
        @exercise = Exercise.new
    end 
     
    def create 
        get program
        @exercise = Exercise.new(exercise_params)
        if @exercise.save
            redirect_to program_circuits_path(@exercise.program)
        else 
            render :new
        end
    end 

    private 

    def get_program 
    @program ||= Program.find_by(id:params[:program_id])
    end  

    def exercise_params 
        params.require(:exercise).permit(:exercise_id, :name, :day, :program_id)
    end 
end 