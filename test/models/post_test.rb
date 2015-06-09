require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  def setup
    @post = Post.new(title: "test title", body: "test body")
  end
  
  test "post should be valid" do
    assert @post.valid?
  end
  
  test "post title should be present, invalid post" do
    @post.title = nil
    assert_not @post.valid?
  end
    
  test "post content should be present" do
    @post.body = "   "
    assert_not @post.valid?
  end
    
  test "post title should be 4 minimum characters" do
    @post.title = "not"
    assert_not @post.valid?
  end
  
    
end
