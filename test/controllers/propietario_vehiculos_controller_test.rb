require 'test_helper'

class PropietarioVehiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propietario_vehiculo = propietario_vehiculos(:one)
  end

  test "should get index" do
    get propietario_vehiculos_url, as: :json
    assert_response :success
  end

  test "should create propietario_vehiculo" do
    assert_difference('PropietarioVehiculo.count') do
      post propietario_vehiculos_url, params: { propietario_vehiculo: { propietario_id: @propietario_vehiculo.propietario_id, vehiculo_id: @propietario_vehiculo.vehiculo_id } }, as: :json
    end

    assert_response 201
  end

  test "should show propietario_vehiculo" do
    get propietario_vehiculo_url(@propietario_vehiculo), as: :json
    assert_response :success
  end

  test "should update propietario_vehiculo" do
    patch propietario_vehiculo_url(@propietario_vehiculo), params: { propietario_vehiculo: { propietario_id: @propietario_vehiculo.propietario_id, vehiculo_id: @propietario_vehiculo.vehiculo_id } }, as: :json
    assert_response 200
  end

  test "should destroy propietario_vehiculo" do
    assert_difference('PropietarioVehiculo.count', -1) do
      delete propietario_vehiculo_url(@propietario_vehiculo), as: :json
    end

    assert_response 204
  end
end
