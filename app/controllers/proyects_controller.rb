class ProyectsController < ApplicationController
  def index
    @proyects = Proyect.all
  end

  def new
    @proyect = Proyect.new
  end

  def create
    @proyect = Proyect.new(proyect_params)
    if @proyect.save
      redirect_to proyects_path
    else
      render :new
    end
  end

  def show
    @proyect = Proyect.find(params[:id])
  end

  def edit
    @proyect = Proyect.find(params[:id])
  end

  def update
    @proyect = Proyect.find(params[:id])
    if @proyect.update(proyect_params)
      redirect_to proyects_path
    else
      render :edit
    end
  end

  private
  def proyect_params
    params.require(:proyect).permit(:name, :subtitle, :description, :youtube, :linkone, :linktwo, :linkthree, :linkfour, :linkfive, :linksix, :linkseven, :linkeight, :linknine, :linkten)
  end

end
