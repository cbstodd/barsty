require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test 'should find store index style elements' do
    get :index
    assert_select 'h1', 'Barsty Store'
    assert_select 'div .jumbotron'

end

end
