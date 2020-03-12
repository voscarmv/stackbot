module SlackStackbot
  module Commands
    class Default < SlackRubyBot::Commands::Base
      command 'about'
      match(/^#{bot_matcher}$/u)

      def self.call(client, data, _match)
        client.say(text: SlackStackbot::ABOUT, channel: data.channel)
      end
    end
  end
end
