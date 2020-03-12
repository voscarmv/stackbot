RSpec.configure do |config|
  config.before do
    SlackRubyBot.config.user = 'slackbot'
  end
end