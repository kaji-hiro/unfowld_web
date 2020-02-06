require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:one)
    @article = @user.articles.build(article_type: 'event',
                                    content: 'test',
                                    title: 'test title',
                                    thumbnail: Rack::Test::UploadedFile.new('app/javascript/images/testimg.png', 'image/png'),
                                    user_id: @user.id)
  end

  test 'should get new' do
    get new_article_path
    assert_response :success
  end

  # TODO: Action_textのテストを成功させる

  # test 'should create new article' do
  #   @article.save
  #   assert_response :success
  # end
end
