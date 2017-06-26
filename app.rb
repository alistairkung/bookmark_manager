require './models/link'
require 'sinatra/base'
require 'dm-postgres-adapter'
require 'data_mapper'

DataMapper.setup(:default, 'postgres://localhost/user')
DataMapper.finalize.auto_upgrade!

class Bookmark_manager < Sinatra::Base

  get '/' do
    'Hello'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  run! if app_file == $0

end
