require 'sinatra'
require 'json'
BOOKMARKS = [
  { id: 1, title: 'Ruby docs', url: 'https://www.ruby-lang.org/' },
  { id: 2, title: 'Docker docs', url: 'https://docs.docker.com/' }
]
get '/health' do
  content_type :json
  { status: 'ok' }.to_json
end
get '/bookmarks' do
  content_type :json
  BOOKMARKS.to_json
end
