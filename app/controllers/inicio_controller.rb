class InicioController < ApplicationController
  def index
    @coches = Sell.all

  end
end
