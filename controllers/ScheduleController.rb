class ScheduleController < ApplicationController

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
		@schedule = Schedule.all 
		@schedule.to_json

	end


	get '/:id/pickups' do 
		schedule = Schedule.find params[:id]
		this_schedule_pickups = schedule.pickups
		{
			success: true,
			message: "this schedule has this pickup",
			pickups: this_schedule_pickups
		}.to_json
	end


	post '/' do
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys
		pickup
		@schedule = Schedule.new
		@schedule.date = payload[:date]
		@schedule.title = payload[:title]
		@schedule.note = payload[:note]
		@schedule.type = payload[:type]
		@schedule.volunteer_id = payload[:volunteer_id]
		@schedule.family_id = payload[:family_id]
		@schedule.save
		@schedule.to_json
	end


	put '/' do
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys
		pickup
		@schedule = Schedule.new
		@schedule.date = payload[:date]
		@schedule.title = payload[:title]
		@schedule.note = payload[:note]
		@schedule.type = payload[:type]
		@schedule.volunteer_id = payload[:volunteer_id]
		@schedule.family_id = payload[:family_id]
		@schedule.save
		@schedule.to_json
	end


	delete '/' do
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys
		schedule
		@schedule = Schedule.find params[:id]
		{
			success: true,
			message: "you deleted a schedule"
		}.to_json
	end



end	










