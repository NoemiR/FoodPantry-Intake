class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()

	# ActiveRecord::Base.establish_connection(
	# 	:adapter => 'postgresql',
	# 	:database => 'foodpantry'

	# )

	require './Config/environments.rb'


	register Sinatra::CrossOrigin 

	configure do 
		enable :cross_origin
	end

	set :allow_origin, :any
	set :allow_methods, [:get, :post, :options, :put, :patch, :delete]
	set :allow_credentials, true 


	options '*' do 
		response.headers['Allow'] = 'HEAD, GET, POST, PUT, PATCH, DELETE'
		response.headers['Access-Control-Allow-Origin'] = '*'
		response.headers['Access-Control-Allow-Headers'] = 'X-Request-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept'
	end


	get '/' do 
		{
			success: false, 
			message: 'Please consult the API documentation'
		}.to_json
	end


	not_found do 
		halt 404
	end



	
end