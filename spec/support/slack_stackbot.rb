RSpec.configure do |config|
  config.before do
    SlackRubyBot.config.user = 'stackbot'
  end
end
