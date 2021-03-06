class FamilyController < ApplicationController

	before do 
		payload_body = request.body.read
		if(payload_body != "")
			@payload = JSON.parse(payload_body).symbolize_keys

			puts "_________________"
			pp @payload 
			puts "_________________"
		end
	end

	get '/' do 
		@families = Family.all
		@families.to_json
	end

	get '/:id' do 
		show_family = Family.find params[:id]
		{
			success: true,
			message: "Here is the inf for #{show_family.name}",
			show_family: show_family
		}.to_json
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
		this_family_schedule = family.schedule
		{
			success: true,
			message: "schedule for #{family.name}",
			schedule: family.schedule
		}.to_json
	end

	get'/:id/registration' do 
		family = Family.find params[:id]
		this_family_registration = family.registration
		{
			success: true, 
			message: "This family registered #{registration.date}",
			registration: this_family_registration
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



		# session[:logged_in] = true
		# session[:name] = @famiy.name
		# session[:family_id] = @family.id


		{
			success: true,
			family_id: family.id,
			family_name: family.name,
			message: "The #{family.name} is now registered",
			family: family
		}.to_json
	
	end



	put '/:id' do 
		@family = Family.find params[:id]
		puts @family
		@family.name = @payload[:name]
		@family.phone = @payload[:phone]
		@family.address = @payload[:address]
		@family.income = @payload[:income]
		@family.household = @payload[:household]
		@family.employment = @payload[:employment]
		@family.birthdate = @payload[:birthdate]
		@family.intake = @payload[:intake]		
		@family.save 
		
		{
			success: true,
			message: "You updated this family",
			updated_family: @family
		}.to_json
	end


	delete '/:id' do 
		@family = Family.find params[:id]
		@family.destroy
		{
			success: true,
			message: "This family is no longer active",
			deleted_family: @family
		}.to_json
	end

end



