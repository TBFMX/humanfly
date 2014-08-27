require 'test_helper'

class SuggestBoxesControllerTest < ActionController::TestCase
  setup do
    @suggest_box = suggest_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suggest_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suggest_box" do
    assert_difference('SuggestBox.count') do
      post :create, suggest_box: { comment: @suggest_box.comment, email: @suggest_box.email, name: @suggest_box.name }
    end

    assert_redirected_to suggest_box_path(assigns(:suggest_box))
  end

  test "should show suggest_box" do
    get :show, id: @suggest_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suggest_box
    assert_response :success
  end

  test "should update suggest_box" do
    patch :update, id: @suggest_box, suggest_box: { comment: @suggest_box.comment, email: @suggest_box.email, name: @suggest_box.name }
    assert_redirected_to suggest_box_path(assigns(:suggest_box))
  end

  test "should destroy suggest_box" do
    assert_difference('SuggestBox.count', -1) do
      delete :destroy, id: @suggest_box
    end

    assert_redirected_to suggest_boxes_path
  end
end
