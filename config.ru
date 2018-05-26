require 'sinatra/base'
require 'sinatra/activerecord'

#controllers


require './controllers/ApplicationController'
require './controllers/AdminController'



#models
require './models/AdminModel'

#routes

map('/') {
	run ApplicationCrontroller
}



map('/admin'){
	run AdminController
}