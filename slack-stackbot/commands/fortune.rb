require_relative '../../lib/fortune.rb'

module SlackStackbot
  module Commands
    class Fortune < SlackRubyBot::Commands::Base
      command 'fortune' do |client, data, _match|
        client.say(channel: data.channel, text: UnixFortune.new.give_fortune)

      rescue StandardError => e
        client.say(channel: data.channel, text: "Sorry, #{e.message}.")
      end
    end
  end
end
