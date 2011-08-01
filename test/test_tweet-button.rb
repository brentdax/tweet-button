require 'helper'

class TestTweetButton < Test::Unit::TestCase
  include TweetButton
  
  def test_permits_nil_via
    assert_equal  "url=http%3A%2F%2Fexample.com&text=Text",
                  options_to_query_string(:text => "Text", :via => nil, :url => "http://example.com"),
                  "Generates a proper options string for nil via"
                  
  end
end
