class PropietarioVehiculosController < ApplicationController
  before_action :set_propietario_vehiculo, only: [:show, :update, :destroy]

  # GET /propietario_vehiculos
  def index
    @propietario_vehiculos = PropietarioVehiculo.all

    render json: @propietario_vehiculos
  end

  # GET /propietario_vehiculos/1
  def show
    render json: @propietario_vehiculo
  end

  # POST /propietario_vehiculos
  def create
    @propietario_vehiculo = PropietarioVehiculo.new(propietario_vehiculo_params)

    if @propietario_vehiculo.save
      render json: @propietario_vehiculo, status: :created, location: @propietario_vehiculo
    else
      render json: @propietario_vehiculo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /propietario_vehiculos/1
  def update
    if @propietario_vehiculo.update(propietario_vehiculo_params)
      render json: @propietario_vehiculo
    else
      render json: @propietario_vehiculo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /propietario_vehiculos/1
  def destroy
    @propietario_vehiculo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propietario_vehiculo
      @propietario_vehiculo = PropietarioVehiculo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def propietario_vehiculo_params
      params.require(:propietario_vehiculo).permit(:vehiculo_id, :propietario_id)
    end
end
