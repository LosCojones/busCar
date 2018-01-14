class VentaController < ApplicationController
  def index
    @coche = Coche.new
  end

  def create
    @coche = Coche.create(:marca => params[:marca], :modelo => params[:modelo], :fecha_matriculacion => params[:fecha_matriculacion], :combustible => params[:combustible], :kms => params[:kms], :descripcion => params[:descripcion])
    if @coche.save
      sell = Sell.create(:coche => @coche,:comprador => nil, :vendedor => current_user, :fecha_publicacion => Time.now.strftime("%d-%m-%Y"), :fecha_compra => nil, :precio => params[:precio])
      if sell.save
        redirect_to controller: 'inicio', action: 'index'
      end
    end
  end
end