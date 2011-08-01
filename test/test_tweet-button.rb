require 'helper'

class TestTweetButton < Test::Unit::TestCase
  require 'action_view'
  
  include ActionView::Helpers::UrlHelper
  include TweetButton
  
  def request
    Struct.new(:url)["http://example.com"]
  end
  
  def test_permits_nil_options
    assert_no_match /via/,
                    options_to_query_string(:text => "Text", :via => nil, :url => "http://example.com"),
                    "Generates a proper options string for nil via"
    assert_no_match /via/, custom_tweet_button("Tweet", :via => nil),
                    "Generates a proper custom tweet button"
    assert_no_match /data-via/, tweet_button(:via => nil),
                    "Generates a proper tweet button"
  end
end
