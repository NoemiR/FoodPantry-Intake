class Pickup < ActiveRecord::Base

	belongs_to :family

	belongs_to :schedules

end