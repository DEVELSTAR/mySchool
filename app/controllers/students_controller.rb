class StudentsController < ApplicationController
  def index
  end

  def stupdates
    @updates = Update.all.order(created_at: :desc)
  end


  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to teachers_index_path
    else
      render :new
    end
  end

  
   private

  def student_params
    params.require(:student).permit(:name, :roll_no, :my_class)
  end
end
