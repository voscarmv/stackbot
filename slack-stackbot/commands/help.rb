module SlackStackbot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help' do |client, data, _match|
        help_message = 'Give me commands by typing _*@Stackbot command [arguments]*_

Here\'s a complete list of my available commands:

*help* Displays this help message.
*about* Displays links to more details about me.
*search* _your search terms_ Searches StackOverflow for relevant questions
*fortune* Tells a fortune from the classic UNIX game `fortune`

Example: *@Stackbot search HTML api*'
        client.say(channel: data.channel, text: help_message)
      end
    end
  end
end