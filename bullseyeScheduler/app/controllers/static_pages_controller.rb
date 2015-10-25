class StaticPagesController < ApplicationController
  def index
		@state = User::LOCATIONS
		@shifts = Shift.where(user_id: current_user.id)
		xml_content = Net::HTTP.get(URI.parse("http://api.target.com/v2/location/#{current_user.home_store_id}?key=#{$key}"))
		@data = Hash.from_xml(xml_content)		
  end

	def openShifts
		@shifts = Shift.where.not(user_id: current_user.id).where(current_status:"Open")
	end

  def about
  end

  def contact
  end
end
