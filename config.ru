require 'sinatra/base'
require 'sinatra/activerecord'

#controllers


require './controllers/ApplicationController'
require './controllers/AdminController'
require './controllers/FamilyController'
require './controllers/RegistrationController'


#models
require './models/AdminModel'
require './models/FamilyModel'
require './models/RegistrationModel'

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

map('/registration'){
	run RegistrationController
}