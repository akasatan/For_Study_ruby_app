class ReservedWordsController < ApplicationController
  
  def show
    @words = ReservedWord.all
  end
  
  def check
    @word = ReservedWord.find(params[:id])
  end
end
