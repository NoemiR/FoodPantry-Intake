class Volunteer < ActiveRecord::Base

has_many :schedules, :through => :shifts

has_many :shifts


end



