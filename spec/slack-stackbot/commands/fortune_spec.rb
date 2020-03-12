require 'spec_helper'

describe SlackStackbot::Commands::Fortune do
  def app
    SlackMathbot::Bot.instance
  end
  let (:file) {
    File.open('lib/fortunes').read
  }
  it 'fortune is contained in fortune file' do
    expect(UnixFortunes::Fortune.new.give_fortune).to satisfy {|s| file =~ /#{Regexp.quote(s)}/m}
  end
end
