require "application_system_test_case"

class CpdEventsTest < ApplicationSystemTestCase
  setup do
    @cpd_event = cpd_events(:one)
  end

  test "visiting the index" do
    visit cpd_events_url
    assert_selector "h1", text: "Cpd Events"
  end

  test "creating a Cpd event" do
    visit cpd_events_url
    click_on "New Cpd Event"

    fill_in "Cpdevent", with: @cpd_event.cpdevent_id
    fill_in "Date", with: @cpd_event.date
    fill_in "Description", with: @cpd_event.description
    fill_in "Name", with: @cpd_event.name
    click_on "Create Cpd event"

    assert_text "Cpd event was successfully created"
    click_on "Back"
  end

  test "updating a Cpd event" do
    visit cpd_events_url
    click_on "Edit", match: :first

    fill_in "Cpdevent", with: @cpd_event.cpdevent_id
    fill_in "Date", with: @cpd_event.date
    fill_in "Description", with: @cpd_event.description
    fill_in "Name", with: @cpd_event.name
    click_on "Update Cpd event"

    assert_text "Cpd event was successfully updated"
    click_on "Back"
  end

  test "destroying a Cpd event" do
    visit cpd_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cpd event was successfully destroyed"
  end
end
