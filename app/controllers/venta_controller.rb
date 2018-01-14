class VentaController < ApplicationController
  def index
    @coche = Coche.new
    @coche.save
  end

  def create
    @coche = Coche.create(marca: params[:marca], modelo: params[:modelo],fecha_matriculacion: params[:fecha_matriculacion] , combustible: params[:combustible], kms: params[:kms], descripcion: params[:descripcion])
    #Sell.create(coche: @coche.id, comprador: )
    @error = coh.errors.full_messages
    #redirect_to controller: 'inicio', action: 'index'
  end
end