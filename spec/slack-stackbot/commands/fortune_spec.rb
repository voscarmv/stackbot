require 'spec_helper'

describe SlackStackbot::Commands::Fortune do
  def app
    SlackStackbot::Bot.instance
  end
  let (:file) do
    File.open('lib/fortunes').read
  end
  it 'fortune is contained in fortune file' do
    expect(UnixFortunes::Fortune.new.give_fortune).to satisfy { |s| file =~ /#{Regexp.quote(s)}/m }
  end
end
