class TFexercisesController < ApplicationController
  def new
    @question = TFexercise.new
  end
  
  def index
    @questions = TFexercise.all
  end
  
  def create
    @question = TFexercise.new(exercise_params)
    if @question.save
      redirect_to t_fexercises_path
    else
      render :new
    end
  end
  
  def edit
    @question = TFexercise.find(params[:id])
  end
  
  def update
    @question = TFexercise.find(params[:id])
    if @question.update(exercise_params)
      redirect_to t_fexercises_path
    else
      render :edit
    end
  end
  
  def destroy
    @question = TFexercise.find(params[:id])
    if @question.destroy
      redirect_to t_fexercises_path
    else
      render :index
    end
  end
  
  def check
    @question = TFexercise.find(params[:id])
  end

  def check_all
  end
  
  private
  def exercise_params
    params.require(:t_fexercise).permit(:question, :judge, :explanation)
  end
end
