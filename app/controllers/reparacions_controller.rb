class ReparacionsController < ApplicationController
  before_action :set_reparacion, only: [:show, :update, :destroy]

  # GET /reparacions
  def index
    @reparacions = Reparacion.all

    render json: @reparacions
  end

  # GET /reparacions/1
  def show
    render json: @reparacion
  end

  # POST /reparacions
  def create
    @reparacion = Reparacion.new(reparacion_params)

    if @reparacion.save
      render json: @reparacion, status: :created, location: @reparacion
    else
      render json: @reparacion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reparacions/1
  def update
    if @reparacion.update(reparacion_params)
      render json: @reparacion
    else
      render json: @reparacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reparacions/1
  def destroy
    @reparacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reparacion
      @reparacion = Reparacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reparacion_params
      params.require(:reparacion).permit(:vehiculo_id, :usuario_id, :usuario_actualiza, :etapa, :aprobado)
    end
end
