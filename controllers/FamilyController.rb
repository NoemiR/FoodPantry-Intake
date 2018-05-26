class FamilyController < ApplicationController



	get '/' do 
		@families = Family.all
		@families.to_json
	end

	get '/:id' do 
		family = Family.find params[:id]
		@family.to_json
	end	


	get '/:id/pickups' do 
		family = Family.find params[:id]
		this_family_pickups = family.pickups
		{
			success: true,
			message: "pickups for #{family.name}",
			pickups: this_family_pickups
		}.to_json
	end

	get '/:id/schedule' do
		family = Family.find params[:id]
		{
			success: true,
			message: "schedule for #{family.name}",
			schedule: family.schedule
		}.to_json
	end



	post '/register' do 
		family = Family.new
		family.name = @payload[:name]
		family.phone = @payload[:phone]
		family.address = @payload[:address]
		family.income = @payload[:income]
		family.household = @payload[:household]
		family.employment = @payload[:employment]
		family.birthdate = @payload[:birthdate]
		family.intake = @payload[:intake]
		family.save



			session[:logged_in] = true
			session[:name] = family.name
			session[:family_id] =family.id


		{
			success: true,
			family_id: family.id,
			family: family.name,
			message: "This #{family} is now registered"
		}.to_json
	
	end



	put '/:id' do 
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys

		puts"this is the payload"
		p payload
		@family = Family.find params[:id]
		@family.name = payload[:name]
		@family.save 
		@family.to_json
	end


	delete '/:id' do 
		@family = Family.find params[:id]
		@family.destroy
		{
			success: true,
			message: "This family is no longer active"
		}.to_json
	end

end



