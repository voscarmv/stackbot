require_relative '../../lib/Fortune.rb'

module SlackStackbot
  module Commands
    class Search < SlackRubyBot::Commands::Base
      command 'fortune' do |client, data, _match|
        client.say(channel: data.channel, text: UnixFortunes::Fortune.new.give_fortune)
      end
    end
  end
end
