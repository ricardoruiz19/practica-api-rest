require 'test_helper'

class BoletaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boletum = boleta(:one)
  end

  test "should get index" do
    get boleta_url
    assert_response :success
  end

  test "should get new" do
    get new_boletum_url
    assert_response :success
  end

  test "should create boletum" do
    assert_difference('Boletum.count') do
      post boleta_url, params: { boletum: { ciudad: @boletum.ciudad, fecha_evento: @boletum.fecha_evento, fecha_inicio: @boletum.fecha_inicio, nombre: @boletum.nombre, pais: @boletum.pais } }
    end

    assert_redirected_to boletum_url(Boletum.last)
  end

  test "should show boletum" do
    get boletum_url(@boletum)
    assert_response :success
  end

  test "should get edit" do
    get edit_boletum_url(@boletum)
    assert_response :success
  end

  test "should update boletum" do
    patch boletum_url(@boletum), params: { boletum: { ciudad: @boletum.ciudad, fecha_evento: @boletum.fecha_evento, fecha_inicio: @boletum.fecha_inicio, nombre: @boletum.nombre, pais: @boletum.pais } }
    assert_redirected_to boletum_url(@boletum)
  end

  test "should destroy boletum" do
    assert_difference('Boletum.count', -1) do
      delete boletum_url(@boletum)
    end

    assert_redirected_to boleta_url
  end
end
