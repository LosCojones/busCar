class SubastaVehiculoController < ApplicationController
  def index
    @coche = Coche.new
    @subastas = Subastum.all
  end

  def create
    if logged_in?
      @coche = Coche.create(:marca => params[:marca], :modelo => params[:modelo], :fecha_matriculacion => params[:fecha_matriculacion], :combustible => params[:combustible], :kms => params[:kms], :descripcion => params[:descripcion])
      if @coche.save
        @subasta = Subastum.new(:coche=> @coche, comprador: nil, :vendedor => current_user, :fecha_publicacion => Time.now.strftime("%d-%m-%Y"), :fecha_limite => params[:fecha_limite], :fecha_compra => params[:fecha_compra], :valor_compra => params[:valor_compra], :puja => nil)
        if @subasta.save
          redirect_to controller: 'subasta'
        end
      else
        redirect_to controller: 'sells'
      end
    else
      redirect_to login_path
    end
  end




end