#heroku config:add R_CONSUMER_KEY= R_CONSUMER_SECRET= R_OAUTH_TOKEN= R_OAUTH_TOKEN_SECRET=

AlainTweets = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['R_CONSUMER_KEY']
  config.consumer_secret = ENV['R_CONSUMER_SECRET']
  config.access_token = ENV['R_OAUTH_TOKEN']
  config.access_token_secret = ENV['R_OAUTH_TOKEN_SECRET']
end