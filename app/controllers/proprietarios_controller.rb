class ProprietariosController < ApplicationController
  def index
    @proprietarios = Proprietario.all
  end

  def show
    @proprietario = Proprietario.find(params[:id])
  end

  def new
    @proprietario = Proprietario.new
  end

  def create
    proprietario = Proprietario.new(proprietario_params)
    proprietario.save
    redirect_to proprietarios_path
  end

  private

  def proprietario_params
    params.require(:proprietario).permit(:nome, :proprietario_id)
  end
end
