class ProjetosController < ApplicationController

  def index
    @projetos = Projeto.all
  end

  def new
    @projeto = Projeto.new
  end


  def create
    projeto = Projeto.new(projeto_params)
    projeto.save
    redirect_to projetos_path
  end

  private

  def projeto_params
    params.require(:projeto).permit(:nome)

  end
end
