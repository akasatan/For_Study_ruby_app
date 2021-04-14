require 'test_helper'

class TFexerciseControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get t_fexercise_show_url
    assert_response :success
  end

  test "should get check" do
    get t_fexercise_check_url
    assert_response :success
  end

  test "should get check_all" do
    get t_fexercise_check_all_url
    assert_response :success
  end

end
