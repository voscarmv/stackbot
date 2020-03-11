module SlackStackbot
  module Commands
    class Search < SlackRubyBot::Commands::Base
      command 'search' do |client, data, _match|
        input = _match[:expression]
        client.say(channel: data.channel, text: input)
      end
    end
  end
end