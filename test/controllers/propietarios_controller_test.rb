require 'test_helper'

class PropietariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propietario = propietarios(:one)
  end

  test "should get index" do
    get propietarios_url, as: :json
    assert_response :success
  end

  test "should create propietario" do
    assert_difference('Propietario.count') do
      post propietarios_url, params: { propietario: { apellido: @propietario.apellido, cedula: @propietario.cedula, celular: @propietario.celular, email: @propietario.email, nombre: @propietario.nombre, usuario_actualiza: @propietario.usuario_actualiza, usuario_id: @propietario.usuario_id } }, as: :json
    end

    assert_response 201
  end

  test "should show propietario" do
    get propietario_url(@propietario), as: :json
    assert_response :success
  end

  test "should update propietario" do
    patch propietario_url(@propietario), params: { propietario: { apellido: @propietario.apellido, cedula: @propietario.cedula, celular: @propietario.celular, email: @propietario.email, nombre: @propietario.nombre, usuario_actualiza: @propietario.usuario_actualiza, usuario_id: @propietario.usuario_id } }, as: :json
    assert_response 200
  end

  test "should destroy propietario" do
    assert_difference('Propietario.count', -1) do
      delete propietario_url(@propietario), as: :json
    end

    assert_response 204
  end
end
