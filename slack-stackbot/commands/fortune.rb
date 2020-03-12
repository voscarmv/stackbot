require_relative '../../lib/fortune.rb'

module SlackStackbot
  module Commands
    class Fortune < SlackRubyBot::Commands::Base
      command 'fortune' do |client, data, _match|
        client.say(channel: data.channel, text: UnixFortunes::Fortune.new.give_fortune)
      end
    end
  end
end
