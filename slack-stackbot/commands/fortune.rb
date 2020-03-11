module SlackStackbot
  module Commands
    class Search < SlackRubyBot::Commands::Base
      command 'fortune' do |client, data, _match|
        client.say(channel: data.channel, text: "Here I tell a fortune!")
      end
    end
  end
end