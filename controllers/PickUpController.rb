class PickUpController < ApplicationController

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
		@pickups = Pickup.all 
		@pickups.to_json
	end


	get '/:id/families' do
		pickup = Pickup.find params[:id]
		this_pickup_families = pickup.families
		{
			success: true, 
			message: "this families came to pick up on #{pickup.date}",
			familes: this_pickup_families
		}.to_json
	end


	post '/' do
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys
		pickup
		@pickup = Pickup.new
		@pickup.date = payload[:date]
		@pickup.family_id = payload[:family_id]
		@pickup.schedule_id = payload[:schedule_id]
		@pickup.save
		@pickup.to_json
	end

	put '/' do
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys
		pickup
		@pickup = Pickup.find params[:id]
		@pickup.date = payload[:date]
		@pickup.family_id = payload[:family_id]
		@pickup.schedule_id = payload[:schedule_id]
		@pickup.save
		@pickup.to_json
	end

	delete '/' do
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys
		pickup
		@pickup = Pickup.find params[:id]
		{
			success: true,
			message: "you deleted a pickup"
		}.to_json
	end

end	


