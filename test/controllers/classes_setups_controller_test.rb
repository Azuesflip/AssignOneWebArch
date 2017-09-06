require 'test_helper'

class ClassesSetupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classes_setup = classes_setups(:one)
  end

  test "should get index" do
    get classes_setups_url
    assert_response :success
  end

  test "should get new" do
    get new_classes_setup_url
    assert_response :success
  end

  test "should create classes_setup" do
    assert_difference('ClassesSetup.count') do
      post classes_setups_url, params: { classes_setup: { area_id: @classes_setup.area_id, area_of_study: @classes_setup.area_of_study, description: @classes_setup.description, name: @classes_setup.name } }
    end

    assert_redirected_to classes_setup_url(ClassesSetup.last)
  end

  test "should show classes_setup" do
    get classes_setup_url(@classes_setup)
    assert_response :success
  end

  test "should get edit" do
    get edit_classes_setup_url(@classes_setup)
    assert_response :success
  end

  test "should update classes_setup" do
    patch classes_setup_url(@classes_setup), params: { classes_setup: { area_id: @classes_setup.area_id, area_of_study: @classes_setup.area_of_study, description: @classes_setup.description, name: @classes_setup.name } }
    assert_redirected_to classes_setup_url(@classes_setup)
  end

  test "should destroy classes_setup" do
    assert_difference('ClassesSetup.count', -1) do
      delete classes_setup_url(@classes_setup)
    end

    assert_redirected_to classes_setups_url
  end
end
