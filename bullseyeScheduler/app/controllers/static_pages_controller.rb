class StaticPagesController < ApplicationController
  def index
		@state = User::LOCATIONS
		
		xml_content = Net::HTTP.get(URI.parse("http://api.target.com/v2/location/#{current_user.home_store_id}?key=#{$key}"))
		@data = Hash.from_xml(xml_content)		
  end

  def about
  end

  def contact
  end
end
