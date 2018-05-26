class Family < ActiveRecord::Base
	has_many :pickups
	has_many :schedules, :through => :pickups
	has_many :registrations

end