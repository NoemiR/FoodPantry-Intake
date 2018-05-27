class Schedule < ActiveRecord::Base
	has_many :pickups
	has_many :families, :through => :pickups
	has_many :shifts
	has_many :volunteers, :through => :shifts

end




