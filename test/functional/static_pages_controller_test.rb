require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get questions" do
    get :questions
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
  end

end
