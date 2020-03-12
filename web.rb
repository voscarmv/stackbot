require 'sinatra/base'

module SlackStackbot
  class Web < Sinatra::Base
    get '/' do
      'I\'m alive!'
    end
  end
end
