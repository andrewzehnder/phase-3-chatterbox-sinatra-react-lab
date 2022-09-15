class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/messages' do
    messages = Message.all.order(:created_at)
    messages.to_json
  end
  
end
