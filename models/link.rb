require 'sinatra'
require 'dm-postgres-adapter'
require 'data_mapper'

class Link

  include DataMapper::Resource

  property :id, Serial
  property :name, Text
  property :url,  Text

end
