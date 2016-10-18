require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'
require_relative './models/word_formatter'

# def setup
#   @word_formatter = WordFormatter.new()
# end

get '/' do
  erb(:home)
end

get '/address' do
  content_type(:json)
  results = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
  # results.map do |result|
  #   if result == :postcode
  #     @word_formatter.make_uppercase(result)
  #   end
  # end
   return results.to_json
end