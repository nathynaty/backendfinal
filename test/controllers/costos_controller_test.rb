require 'test_helper'

class CostosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @costo = costos(:one)
  end

  test "should get index" do
    get costos_url, as: :json
    assert_response :success
  end

  test "should create costo" do
    assert_difference('Costo.count') do
      post costos_url, params: { costo: { propietario_id: @costo.propietario_id, reparacion_id: @costo.reparacion_id, vehiculo_id: @costo.vehiculo_id } }, as: :json
    end

    assert_response 201
  end

  test "should show costo" do
    get costo_url(@costo), as: :json
    assert_response :success
  end

  test "should update costo" do
    patch costo_url(@costo), params: { costo: { propietario_id: @costo.propietario_id, reparacion_id: @costo.reparacion_id, vehiculo_id: @costo.vehiculo_id } }, as: :json
    assert_response 200
  end

  test "should destroy costo" do
    assert_difference('Costo.count', -1) do
      delete costo_url(@costo), as: :json
    end

    assert_response 204
  end
end
