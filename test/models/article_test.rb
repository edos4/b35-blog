require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without name" do
    article = Article.new
    article.body = "Body ito"
    assert_not article.save, "Saved the Article without a name"
  end

  test "should not save article without a body" do
    article = Article.new
    article.name = "name ito"
    assert_not article.save, "Saved the Article without a body"
  end
end
