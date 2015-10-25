class Shift < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :store_id
	STATUS = [
	"General",
	"Finalized",
	"Open",
	"Pending",
	"Closed"
	]



end
