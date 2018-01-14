class SubastaController < ApplicationController
  before_action :set_subastum, only: [:show, :edit, :update, :destroy]

  # GET /subasta
  # GET /subasta.json
  def index
    @subastas = Subastum.all
    @coches = []
    i=0;
    @subastas.each do |subasta|
      @coches[i] = Coche.find(subasta.coche_id)
      i+=1
    end
  end

  # GET /subasta/1
  # GET /subasta/1.json
  def show
  end

  # GET /subasta/new
  def new
    @subastum = Subastum.new
  end

  # GET /subasta/1/edit
  def edit
  end

  # POST /subasta
  # POST /subasta.json
  def create
    @subastum = Subastum.new(subastum_params)

    respond_to do |format|
      if @subastum.save
        format.html { redirect_to @subastum, notice: 'Subastum was successfully created.' }
        format.json { render :show, status: :created, location: @subastum }
      else
        format.html { render :new }
        format.json { render json: @subastum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subasta/1
  # PATCH/PUT /subasta/1.json
  def update
    respond_to do |format|
      if @subastum.update(subastum_params)
        format.html { redirect_to @subastum, notice: 'Subastum was successfully updated.' }
        format.json { render :show, status: :ok, location: @subastum }
      else
        format.html { render :edit }
        format.json { render json: @subastum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subasta/1
  # DELETE /subasta/1.json
  def destroy
    @subastum.destroy
    respond_to do |format|
      format.html { redirect_to subasta_url, notice: 'Subastum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subastum
      @subastum = Subastum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subastum_params
      params.require(:subastum).permit(:coche_id, :comprador_id, :vendedor_id, :fecha_publicacion, :fecha_limite, :fecha_compra, :valor_compra, :puja_id)
    end
end
