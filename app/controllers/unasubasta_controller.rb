class UnasubastaController < ApplicationController
  def index
    @vehiculo = Coche.info(params[:id]).first
    @subasta = Subastum.find_by_coche_id(params[:id])
    @usuario = User.find(@subasta.vendedor.id)
    @pujas = Puja.order("valor desc").limit(5)
  end
end
