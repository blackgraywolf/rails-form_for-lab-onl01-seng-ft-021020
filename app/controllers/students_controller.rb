 require 'pry'
class StudentsController < ApplicationController
  
  def index
  @students1 =  Student.all
  end
  
   def new
    
    @student2 = Student.new
    
    end
    
   def create
    # binding.pry
      @student3 = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student3)
     end
      
    def show
        @student4 = Student.find(params[:id])
    end 

    def edit
        @student5 = Student.find(params[:id])
    end 
        
     def update
        @student6 = Student.find(params[:id])
        @student6.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student6)
    end 
    
end