require 'test_helper'

class CpdEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cpd_event = cpd_events(:one)
  end

  test "should get index" do
    get cpd_events_url
    assert_response :success
  end

  test "should get new" do
    get new_cpd_event_url
    assert_response :success
  end

  test "should create cpd_event" do
    assert_difference('CpdEvent.count') do
      post cpd_events_url, params: { cpd_event: { cpdevent_id: @cpd_event.cpdevent_id, date: @cpd_event.date, description: @cpd_event.description, name: @cpd_event.name } }
    end

    assert_redirected_to cpd_event_url(CpdEvent.last)
  end

  test "should show cpd_event" do
    get cpd_event_url(@cpd_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_cpd_event_url(@cpd_event)
    assert_response :success
  end

  test "should update cpd_event" do
    patch cpd_event_url(@cpd_event), params: { cpd_event: { cpdevent_id: @cpd_event.cpdevent_id, date: @cpd_event.date, description: @cpd_event.description, name: @cpd_event.name } }
    assert_redirected_to cpd_event_url(@cpd_event)
  end

  test "should destroy cpd_event" do
    assert_difference('CpdEvent.count', -1) do
      delete cpd_event_url(@cpd_event)
    end

    assert_redirected_to cpd_events_url
  end
end
