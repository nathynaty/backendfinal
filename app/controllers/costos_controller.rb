class CostosController < ApplicationController
  before_action :set_costo, only: [:show, :update, :destroy]

  # GET /costos
  def index
    @costos = Costo.all

    render json: @costos
  end

  # GET /costos/1
  def show
    render json: @costo
  end

  # POST /costos
  def create
    @costo = Costo.new(costo_params)

    if @costo.save
      render json: @costo, status: :created, location: @costo
    else
      render json: @costo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /costos/1
  def update
    if @costo.update(costo_params)
      render json: @costo
    else
      render json: @costo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /costos/1
  def destroy
    @costo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costo
      @costo = Costo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def costo_params
      params.require(:costo).permit(:reparacion_id, :propietario_id, :vehiculo_id)
    end
end
