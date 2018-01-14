class InicioController < ApplicationController
  def index
    #@pene = params[:id]
    case params[:id]
      when 1
        #@coches = Coche.fecha
      when 2
        #@coches = Coche.venta
      when 3
        #@coches = Coche.marca(marca:'Dacia')
      else
        #@coches = Coche.all

    end
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
