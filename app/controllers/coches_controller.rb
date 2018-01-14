class CochesController < ApplicationController
  before_action :set_coch, only: [:show, :edit, :update, :destroy]

  # GET /coches
  # GET /coches.json
  def index
    @coches = Coche.all
  end

  # GET /coches/1
  # GET /coches/1.json
  def show
  end

  # GET /coches/new
  def new
    @coch = Coche.new
  end

  # GET /coches/1/edit
  def edit
  end

  # POST /coches
  # POST /coches.json
  def create
    if logged_in?
      @coch = Coche.new(coch_params)

      respond_to do |format|
        if @coch.save
          format.html { redirect_to root_path, notice: 'Coche was successfully created.' }
          format.json { render :show, status: :created, location: @coch }
          @venta = Sell.new(coche: @coch, vendedor: current_user ,fecha_publicacion: Time.now.strftime("%d-%m-%Y") , fecha_compra: nil, precio: params[:precio])
          @venta.save
        else
          format.html { render :new }
          format.json { render json: @coch.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to login_path
    end
  end

  # PATCH/PUT /coches/1
  # PATCH/PUT /coches/1.json
  def update
    respond_to do |format|
      if @coch.update(coch_params)
        format.html { redirect_to @coch, notice: 'Coche was successfully updated.' }
        format.json { render :show, status: :ok, location: @coch }
      else
        format.html { render :edit }
        format.json { render json: @coch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coches/1
  # DELETE /coches/1.json
  def destroy
    @coch.destroy
    respond_to do |format|
      format.html { redirect_to @coches, notice: 'Coche was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coch
      @coch = Coche.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coch_params
      params.permit(:marca, :modelo, :fecha_matriculacion, :combustible, :kms, :descripcion)
    end
end
