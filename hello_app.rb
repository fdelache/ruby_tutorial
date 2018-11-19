require 'sinatra'
require 'date'

get '/' do
  "Hello world! Happy #{Date::DAYNAMES[Time.now.wday]}"
end
