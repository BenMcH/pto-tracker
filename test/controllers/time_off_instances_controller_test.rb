require 'test_helper'

class TimeOffInstancesControllerTest < ActionController::TestCase
  setup do
    @time_off_instance = time_off_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_off_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_off_instance" do
    assert_difference('TimeOffInstance.count') do
      post :create, time_off_instance: { employee_id: @time_off_instance.employee_id, hours_used: @time_off_instance.hours_used }
    end

    assert_redirected_to time_off_instance_path(assigns(:time_off_instance))
  end

  test "should show time_off_instance" do
    get :show, id: @time_off_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_off_instance
    assert_response :success
  end

  test "should update time_off_instance" do
    patch :update, id: @time_off_instance, time_off_instance: { employee_id: @time_off_instance.employee_id, hours_used: @time_off_instance.hours_used }
    assert_redirected_to time_off_instance_path(assigns(:time_off_instance))
  end

  test "should destroy time_off_instance" do
    assert_difference('TimeOffInstance.count', -1) do
      delete :destroy, id: @time_off_instance
    end

    assert_redirected_to time_off_instances_path
  end
end
