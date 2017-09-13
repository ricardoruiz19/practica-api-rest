require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
<<<<<<< HEAD
      post tickets_url, params: { ticket: { event_id: @ticket.event_id } }
=======
      post tickets_url, params: { ticket: { ciudad: @ticket.ciudad, fecha_evento: @ticket.fecha_evento, fecha_inicio: @ticket.fecha_inicio, nombre: @ticket.nombre, pais: @ticket.pais } }
>>>>>>> e726aa3161ce6e066dfcacd5328d2a5029866644
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
<<<<<<< HEAD
    patch ticket_url(@ticket), params: { ticket: { event_id: @ticket.event_id } }
=======
    patch ticket_url(@ticket), params: { ticket: { ciudad: @ticket.ciudad, fecha_evento: @ticket.fecha_evento, fecha_inicio: @ticket.fecha_inicio, nombre: @ticket.nombre, pais: @ticket.pais } }
>>>>>>> e726aa3161ce6e066dfcacd5328d2a5029866644
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
