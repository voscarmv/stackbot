require_relative '../../spec_helper'

describe SlackRubyBot::Commands::Hi do
  def app
    SlackMathbot::Bot.instance
  end
  it 'says hi' do
    expect(message: 'stackbot hi').to respond_with_slack_message('Hi <@user>!')
  end
end
