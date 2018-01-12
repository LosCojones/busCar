class BuysellsController < ApplicationController
  before_action :set_buysell, only: [:show, :edit, :update, :destroy]

  # GET /buysells
  # GET /buysells.json
  def index
    @buysells = Buysell.all
  end

  # GET /buysells/1
  # GET /buysells/1.json
  def show
  end

  # GET /buysells/new
  def new
    @buysell = Buysell.new
  end

  # GET /buysells/1/edit
  def edit
  end

  # POST /buysells
  # POST /buysells.json
  def create
    @buysell = Buysell.new(buysell_params)

    respond_to do |format|
      if @buysell.save
        format.html { redirect_to @buysell, notice: 'Buysell was successfully created.' }
        format.json { render :show, status: :created, location: @buysell }
      else
        format.html { render :new }
        format.json { render json: @buysell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buysells/1
  # PATCH/PUT /buysells/1.json
  def update
    respond_to do |format|
      if @buysell.update(buysell_params)
        format.html { redirect_to @buysell, notice: 'Buysell was successfully updated.' }
        format.json { render :show, status: :ok, location: @buysell }
      else
        format.html { render :edit }
        format.json { render json: @buysell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buysells/1
  # DELETE /buysells/1.json
  def destroy
    @buysell.destroy
    respond_to do |format|
      format.html { redirect_to buysells_url, notice: 'Buysell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buysell
      @buysell = Buysell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buysell_params
      params.require(:buysell).permit(:coche_id, :comprador_id, :vendedor_id, :fecha_publicacion, :fecha_compra, :precio)
    end
end
