class TFexercisesController < ApplicationController
  def new
    @question = TFexercise.new
  end
  
  def index
    @question = TFexercise.all
  end
  
  def create
    @question = TFexercise.new(exercise_params)
    if @question.save
      redirect_to t_fexercises_path
    else
      render :new
    end
  end
  
  def show
  end

  def check
  end

  def check_all
  end
  
  private
  def exercise_params
    params.require(:t_fexercise).permit(:question, :judge, :explanation)
  end
end
