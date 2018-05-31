class AdminController < ApplicationController

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
		admin = Admin.all
		{
			success: true,
			message: "AdminController",
			admin: admin
		}.to_json
	end

	post '/register' do 

		admin = Admin.new
		admin.username = @payload[:username]
		admin.password = @payload[:password]
		admin.save

		session[:logged_in] = true
		session[:username] = admin.username
		session[:admin_id] = admin.id
		puts ""
		puts "hitting"
		pp session
		puts ""
		
		#send message to tell them the username is blank
		{
			success: true,
			username: admin.username,
			admin_id: admin.id,
			message: "You are logged in"
		}.to_json

	end 	

	post '/login' do 
		puts "hitting login"
		username = @payload[:username]
		password = @payload[:password]
		


		admin = Admin.find_by username: username
		if admin && admin.authenticate(password)
			session[:logged_in] = true
			session[:username] = username
			session[:admin_id] = admin.id 

			puts "logged in"
			pp session
			puts ""
			{
				success: true,
				admin_id: admin.id,
				username: username,
				message: "Welcome back #{username}"

			}.to_json
		else 
			{
				success: false,
				message: "Invalid username or password"

			}.to_json
		end
	end

	post '/logout' do 
		session.destroy
		{
			success: true,
			message: "You are logged out"
		}.to_json
	end


end