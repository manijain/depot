require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'programing ruby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

  test "markup needed for store.js.coffe is in place" do
    get :index
    assert_select '.store .entry > img', 3
    assert_select '.entry input[type=submit]',3
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: @order.attributes
    end
    assert_redirected_to store_path
  end
end
