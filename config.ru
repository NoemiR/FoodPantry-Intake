require 'sinatra/base'
require 'sinatra/activerecord'

#controllers


require './controllers/ApplicationController'
require './controllers/AdminController'
require './controllers/FamilyController'
require './controllers/RegistrationController'
require './controllers/PickUpController'
require './controllers/ScheduleController'


#models

require './models/AdminModel'
require './models/FamilyModel'
require './models/RegistrationModel'
require './models/PickUpModel'
require './models/ScheduleModel'

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

map('/registrations'){
	run RegistrationController
}

map('/pickups'){
	run AdminController
}


map('/schedules'){
	run ScheduleController
}






