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
    @images=ProjectImage.where(project_name: params[:project_name])
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

  def destroy
    proyect = Proyect.find(params[:id])
    proyect.destroy

    redirect_to proyects_path      
  end

  private
  def proyect_params
    params.require(:project_image).permit(:project_name)
  end

end
