require 'test_helper'

class InputStudyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get input_study_index_url
    assert_response :success
  end

  test "should get create" do
    get input_study_create_url
    assert_response :success
  end

  test "should get edit" do
    get input_study_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get input_study_destroy_url
    assert_response :success
  end

  test "should get check" do
    get input_study_check_url
    assert_response :success
  end

end
