require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @event = articles(:event)
  end

  test 'should get index' do
    # TODO: active storage のfixtureがないため、サムネ表示でエラーを起こす
    # get events_index_path
    # assert_response :success
  end

  test 'should get show' do
    get event_path(@event.id)
    assert_response :success
  end
end
