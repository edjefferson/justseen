require 'twitter'

#heroku config:add R_CONSUMER_KEY= R_CONSUMER_SECRET= R_OAUTH_TOKEN= R_OAUTH_TOKEN_SECRET=

JustSeenTweets = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['R_CONSUMER_KEY']
  config.consumer_secret = ENV['R_CONSUMER_SECRET']
  config.access_token = ENV['R_OAUTH_TOKEN']
  config.access_token_secret = ENV['R_OAUTH_TOKEN_SECRET']
end

JustSeenTweets.search("Just seen Stewart Lee", :result_type => "recent", :since_id => result_id 
).take(20).to_a.reverse.each do |status|

  puts status.text

end