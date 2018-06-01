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


	get "/" do 
		pickup = Pickup.all.order(date: :desc)
		pickup.to_json
	end


	get "/:id" do
		pickup = Pickup.find params[:id]
		{
			success: true,
			message: "this is the pickup with this id",
			pickup: pickup
		}.to_json
	end

	get "/families" do
		families = Pickup.where(pickup: true)
		{

			success: true, 
			message: "this families came to pick up on #{pickup.date}",
			familes: families
		}.to_json
	end

	# getting all pickups for this family
	get '/families/:family_id' do
		family_pickups = Pickup.where family_id: params[:family_id]
		
		{
			success: true, 
			message: "this families came ",
			family_pickups: family_pickups
		}.to_json
	end


	post '/' do

		@pickup = Pickup.new
		@pickup.date = @payload[:date]
		@pickup.family_id = @payload[:family_id]
		@pickup.schedule_id = @payload[:schedule_id]

		@pickup.save
		@pickup.to_json
	end

	put '/:id' do

		pickup = Pickup.find params[:id]
		pickup.checkin = true
		pickup.save
		pickup.to_json
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


