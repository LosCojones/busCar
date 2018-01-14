class InicioController < ApplicationController
  def index
    @coches = Coche.all
    @ventas=[]
    i=0
    @coches.each do |coche|
      if Sell.find_by_coche_id(coche.id)
        @ventas[i] = Sell.where(:coche_id => coche.id).first.precio
      else if Subastum.find_by_coche_id(coche.id)
        @ventas[i] = Subastum.where(:coche_id => coche.id).first.valor_compra
           end
      end
      i+=1
    end

  end

end
