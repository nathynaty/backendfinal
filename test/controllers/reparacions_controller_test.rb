require 'test_helper'

class ReparacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reparacion = reparacions(:one)
  end

  test "should get index" do
    get reparacions_url, as: :json
    assert_response :success
  end

  test "should create reparacion" do
    assert_difference('Reparacion.count') do
      post reparacions_url, params: { reparacion: { aprobado: @reparacion.aprobado, etapa: @reparacion.etapa, usuario_actualiza: @reparacion.usuario_actualiza, usuario_id: @reparacion.usuario_id, vehiculo_id: @reparacion.vehiculo_id } }, as: :json
    end

    assert_response 201
  end

  test "should show reparacion" do
    get reparacion_url(@reparacion), as: :json
    assert_response :success
  end

  test "should update reparacion" do
    patch reparacion_url(@reparacion), params: { reparacion: { aprobado: @reparacion.aprobado, etapa: @reparacion.etapa, usuario_actualiza: @reparacion.usuario_actualiza, usuario_id: @reparacion.usuario_id, vehiculo_id: @reparacion.vehiculo_id } }, as: :json
    assert_response 200
  end

  test "should destroy reparacion" do
    assert_difference('Reparacion.count', -1) do
      delete reparacion_url(@reparacion), as: :json
    end

    assert_response 204
  end
end
