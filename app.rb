require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

	get '/' do
	  erb :index
	end

	post '/' do
	  @analyzed_text = textanalyzer.new(params[:user_text])
	  erb :results
	end

	get '/results' do
		# receives the form of data through params and renders the results page
	end
end