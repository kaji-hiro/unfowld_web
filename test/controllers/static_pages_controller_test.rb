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
    ENV['SLACKWEBHOOK'] = 'https://hooks.slack.com/services/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'
    post static_pages_send_messege_to_slack_path,
         params: { message: 'test_message', email: 'test@example.com' }
    assert_response :redirect
  end
end
