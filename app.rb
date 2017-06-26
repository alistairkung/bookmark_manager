require 'sinatra'

class Bookmark_manager < Sinatra::Base
  get '/' do
    'Hello'
  end

  run! if app_file == $0
end
