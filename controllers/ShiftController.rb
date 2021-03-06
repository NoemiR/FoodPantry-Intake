class ShiftController < ApplicationController

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
		@shift = Shift.all
		@shift.to_json
	end

	get "/:id" do
		shift = Shift.find params[:id]
		{
			success: true,
			message: "this is the shift with this id",
			shift: shift
		}.to_json
	end


	# getting shift for this volunteer
	get '/volunteers/:volunteer_id' do 
		volunteer_shifts = Shift.where volunteer_id: params[:volunteer_id]
		{
			success: true,
			message: "this is the shifts for this volunteer",
			volunteer_shifts: volunteer_shifts
		}.to_json
	end


	post "/" do 
		@shift = Shift.new
		@shift.title = payload[:title]
		@shift.volunteer_id = payload[:volunteer_id]
		@shift.schedule_id = payload[:schedule_id]
		@shift.save
		@shift.to_json
	end


	put "/:id" do 
		@shift = Shift.find params[:id]
		@shift.title = payload[:title]
		@shift.volunteer_id = payload[:volunteer_id]
		@shift.schedule_id = payload[:schedule_id]
		@shift.save
		@shift.to_json
	end


	delete '/:id' do
		@shift = Shift.find params[:id]
		@shift.destroy
		{
			success: true,
			message: "you deleted a shift"
		}.to_json
	end
end

