require 'sinatra/base'
require 'sinatra/activerecord'

#controllers


require './controllers/ApplicationController'
require './controllers/AdminController'



#models
require './models/AdminModel'

#routes

map('/') {
	run ApplicationController
}



map('/admin'){
	run AdminController
}