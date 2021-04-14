class InputStudiesController < ApplicationController
  
  def new
    @question = InputStudy.new
  end
  
  def index
    @questions = InputStudy.all
  end

  def create
    @question = InputStudy.new(input_study_params)
    if @question.save
      redirect_to input_studies_path
    else
      render :new
    end
  end

  def edit
    @question = InputStudy.find(params[:id])
  end
  
  def update
    @question = InputStudy.find(params[:id])
    if @question.update(input_study_params)
      redirect_to input_studies_path
    else
      render :edit
    end
  end

  def destroy
    @question = InputStudy.find(params[:id])
    if @question.destroy
      redirect_to input_studies_path
    else
      render :index
    end
  end

  def check
    @question = InputStudy.find(params[:id])
  end
  
  private
  def input_study_params
    params.require(:input_study).permit(:question, :explanation)
  end
end
