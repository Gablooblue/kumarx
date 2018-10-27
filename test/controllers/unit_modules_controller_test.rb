require 'test_helper'

class UnitModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_module = unit_modules(:one)
  end

  test "should get index" do
    get unit_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_module_url
    assert_response :success
  end

  test "should create unit_module" do
    assert_difference('UnitModule.count') do
      post unit_modules_url, params: { unit_module: { description: @unit_module.description, title: @unit_module.title } }
    end

    assert_redirected_to unit_module_url(UnitModule.last)
  end

  test "should show unit_module" do
    get unit_module_url(@unit_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_module_url(@unit_module)
    assert_response :success
  end

  test "should update unit_module" do
    patch unit_module_url(@unit_module), params: { unit_module: { description: @unit_module.description, title: @unit_module.title } }
    assert_redirected_to unit_module_url(@unit_module)
  end

  test "should destroy unit_module" do
    assert_difference('UnitModule.count', -1) do
      delete unit_module_url(@unit_module)
    end

    assert_redirected_to unit_modules_url
  end
end
