class InicioController < ApplicationController
  def index
    @coches = Coche.all
  end
end
