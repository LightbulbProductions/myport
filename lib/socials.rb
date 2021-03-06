module Socials
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
      config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
      config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
    end
    client.search("#webdevelopment", result_type: 'recent').take(6).collect do |tweets|
      "#{tweets.user.screen_name}: #{tweets.text}"
    end
      
  end
end