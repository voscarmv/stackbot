module SlackStackbot
  module Commands
    class Hi < SlackRubyBot::Commands::Base
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: "Hello <@#{data.user}>!", gif: 'hi')
      end
    end
  end
end