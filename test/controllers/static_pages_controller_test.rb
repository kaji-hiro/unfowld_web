require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get root_path
    assert_response :success
  end

  test 'should get about' do
    get static_pages_about_path
    assert_response :success
  end

  test 'should get contact' do
    get static_pages_contact_path
    assert_response :success
  end

  test 'should get members' do
    get static_pages_contact_path
    assert_response :success
  end

  test 'should be able to send message to slack' do
    ENV['SLACKWEBHOOK'] = ENV['SLACK_ERROR_WEBHOOK']
    post static_pages_send_messege_to_slack_path,
         params: { message: 'test_message', email: 'test@example.com' }
    assert_response :redirect
  end
end
