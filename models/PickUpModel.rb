class PickUp < ActiveRecord::Base

	belongs_to :family

	belongs_to :schedule
	# , :through => :families
end