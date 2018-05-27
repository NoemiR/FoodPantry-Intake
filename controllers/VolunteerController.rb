class VolunteerController < ApplicationController

	before do 
		payload_body = request.body.read
		if(payload_body != "")
			@payload = JSON.parse(payload_body).symbolize_keys

			puts "_________________"
			pp @payload 
			puts "_________________"
		end
	end

	get "/" do 
		@volunteer = Volunteer.all
		@volunteer.to_json
	end

	get "/:id" do
		volunteer = Volunteer.find params[:id]
		{
			success: true,
			message: "this is the volunteer with this id",
			volunteer: volunteer
		}.to_json
	end

	get "/:id/shifts" do
		volunteer = volunteer.find params[:id]
		this_volunteer_shifts = volunteer.shift
		{
			success: true,
			message: "this is the volunteer with this id",
			volunteer: volunteer
		}.to_json
	end

	post '/register' do 
		volunteer = Volunteer.new
		volunteer.name = @payload[:name]
		volunteer.phone = @payload[:phone]
		volunteer.address = @payload[:address]
		volunteer.email = @payload[:email]
		volunteer.startdate = @payload[:startdate]
		volunteer.route = @payload[:route]
		volunteer.birthdate = @payload[:birthdate]
		volunteer.save



			session[:logged_in] = true
			session[:name] = volunteer.name
			session[:volunteer_id] =volunteer.id


		{
			success: true,
			volunteer_id: volunteer.id,
			volunteer: volunteer.name,
			message: "This #{volunteer} is now registered"
		}.to_json
	end


	put '/:id' do 
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys

		puts"this is the payload"
		p payload
		@volunteer = Volunteer.find params[:id]
		@volunteer.name = payload[:name]
		@volunteer.phone = payload[:phone]
		@volunteer.address = payload[:address]
		@volunteer.email = payload[:email]
		@volunteer.route = payload[:route]
		@volunteer.save 
		@volunteer.to_json
	end

	delete '/:id' do 
		@volunteer = Volunteer.find params[:id]
		@volunteer.destroy
		{
			success: true,
			message: "This volunteer is no longer active"
		}.to_json
	end

end