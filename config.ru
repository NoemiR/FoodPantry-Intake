require 'sinatra/base'
require 'sinatra/activerecord'

#controllers


require './controllers/ApplicationController'
require './controllers/AdminController'
require './controllers/FamilyController'


#models
require './models/AdminModel'
require './models/FamilyModel'

#routes

map('/') {
	run ApplicationController
}



map('/admin'){
	run AdminController
}


map('/families'){
	run FamilyController
}