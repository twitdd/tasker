require 'test_helper'

class OccurencesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:occurences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create occurence" do
    assert_difference('Occurence.count') do
      post :create, :occurence => { }
    end

    assert_redirected_to occurence_path(assigns(:occurence))
  end

  test "should show occurence" do
    get :show, :id => occurences(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => occurences(:one).to_param
    assert_response :success
  end

  test "should update occurence" do
    put :update, :id => occurences(:one).to_param, :occurence => { }
    assert_redirected_to occurence_path(assigns(:occurence))
  end

  test "should destroy occurence" do
    assert_difference('Occurence.count', -1) do
      delete :destroy, :id => occurences(:one).to_param
    end

    assert_redirected_to occurences_path
  end
end
