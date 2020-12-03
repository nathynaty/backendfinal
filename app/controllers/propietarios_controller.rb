class PropietariosController < ApplicationController
  before_action :set_propietario, only: [:show, :update, :destroy]

  # GET /propietarios
  def index
    @propietarios = Propietario.all

    render json: @propietarios
  end

  # GET /propietarios/1
  def show
    render json: @propietario
  end

  # POST /propietarios
  def create
    @propietario = Propietario.new(propietario_params)

    if @propietario.save
      render json: @propietario, status: :created, location: @propietario
    else
      render json: @propietario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /propietarios/1
  def update
    if @propietario.update(propietario_params)
      render json: @propietario
    else
      render json: @propietario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /propietarios/1
  def destroy
    @propietario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propietario
      @propietario = Propietario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def propietario_params
      params.require(:propietario).permit(:nombre, :apellido, :usuario_id, :usuario_actualiza, :cedula, :celular, :email)
    end
end
