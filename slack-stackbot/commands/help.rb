module SlackStackbot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help' do |client, data, _match|
        help_message = 'Give me commands by typing _*@Stackbot command [arguments]*_

Here\'s a complete list of my available commands:

*help* Display this help message.
*search* _your search terms_ Search StackOverflow for relevant questions
*fortune* Tell a fortune from the classic UNIX game `fortune`
*hi* Say _"hi"_ to me!
*about* Display links to more details about me.

Example: *@Stackbot search HTML api*'
        client.say(channel: data.channel, text: help_message)
      end
    end
  end
end
