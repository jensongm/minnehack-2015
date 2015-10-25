class Shift < ActiveRecord::Base
	belongs_to :user

	STATUS = [
	"General",
	"Finalized",
	"Open",
	"Pending",
	"Closed"
	]



end
