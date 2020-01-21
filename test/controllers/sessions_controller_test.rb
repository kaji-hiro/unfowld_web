require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get login_path
    assert_response :success
  end

  test 'should be able to login' do
    post login_path, params: { session: { email: 'test@exapmle.com', password: 'password' } }
    assert logged_in?
  end

  test 'should be able to logout' do
    post login_path, params: { session: { email: 'test@exapmle.com', password: 'Mystring' } }
    delete logout_path
    assert_not logged_in?
  end
end
