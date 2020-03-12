require 'spec_helper'

describe SlackStackbot::Commands::Hi do
  def app
    SlackMathbot::Bot.instance
  end
  it 'says hi' do
    expect(message: "stackbot hi").to respond_with_slack_message('Hello <@user>!')
  end
end