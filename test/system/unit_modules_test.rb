require "application_system_test_case"

class UnitModulesTest < ApplicationSystemTestCase
  setup do
    @unit_module = unit_modules(:one)
  end

  test "visiting the index" do
    visit unit_modules_url
    assert_selector "h1", text: "Unit Modules"
  end

  test "creating a Unit module" do
    visit unit_modules_url
    click_on "New Unit Module"

    fill_in "Description", with: @unit_module.description
    fill_in "Title", with: @unit_module.title
    click_on "Create Unit module"

    assert_text "Unit module was successfully created"
    click_on "Back"
  end

  test "updating a Unit module" do
    visit unit_modules_url
    click_on "Edit", match: :first

    fill_in "Description", with: @unit_module.description
    fill_in "Title", with: @unit_module.title
    click_on "Update Unit module"

    assert_text "Unit module was successfully updated"
    click_on "Back"
  end

  test "destroying a Unit module" do
    visit unit_modules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unit module was successfully destroyed"
  end
end
