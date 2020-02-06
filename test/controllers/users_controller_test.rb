require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get new_user_path
    assert_response :success
  end

  test 'should create new user' do
    post users_path, params: { user: { nane: 'test', email: 'test@example.com', password: 'testpassword', password_confirmation: 'testpassword' } }
    assert_response :success
  end
end
