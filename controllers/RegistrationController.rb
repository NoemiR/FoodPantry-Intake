class RegistrationController < ApplicationController
	before do 
		payload_body = request.body.read
		if(payload_body != "")
			@payload = JSON.parse(payload_body)
			puts "_______"
			pp @payload
			puts "_______"
		end
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
			message: "This #{family.phone} is now registered"
		}.to_json
	
	end

	get "/" do 
		registrations = Registration.all
		registrations.to_json
	end 

	get "/:id/families" do 
		registration = Registration.find params[:id]
		registered_family = registration.family
		{
			success: true,
			message: "This id belongs to ",
			families: registered_family
		}.to_json
	end

end













