class ProyectsController < ApplicationController
  def index
    @proyects = Proyect.all
  end

  def new
    @proyect = Proyect.new    
  end

  private
  def proyect_params

  end

end
