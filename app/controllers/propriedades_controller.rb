class PropriedadesController < ApplicationController
  def index
    @propriedades = Propriedade.where(proprietario_id: params[:proprietario_id])
  end

  def new
    @propriedade = Propriedade.new
  end

  def show
    @propriedade = Propriedade.find(params[:id])
  end

  def create
    propriedade = Propriedade.new(propriedade_params)
    propriedade.save
    redirect_to proprietarios_path
  end

  private

  def propriedade_params
    params.require(:propriedade).permit(:nome, :proprietario_id)
  end

end
