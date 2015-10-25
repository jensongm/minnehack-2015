class User < ActiveRecord::Base
	has_many :shift
	belongs_to :role
	before_save :set_role

  has_secure_password
	validates_uniqueness_of :email
	#State Locations
	LOCATIONS = [
		"AL",
		"AK",
		"AZ",
		"AR",
		"CA",
		"CO",
		"CT",
		"DE",
		"FL",
		"GA",
		"HI",
		"ID",
		"IL",
		"IN",
		"IA",
		"KS",
		"KY",
		"LA",
		"ME",
		"MD",
		"MA",
		"MI",
		"MN",
		"MS",
		"MO",
		"MT",
		"NE",
		"NV",
		"NH",
		"NJ",
		"NM",
		"NY",
		"NC",
		"ND",
		"OH",
		"OK",
		"OR",
		"PA",
		"RI",
		"SC",
		"SD",
		"TN",
		"TX",
		"UT",
		"VT",
		"VA",
		"WA",
		"WV",
		"WI",
		"WY"
	]

	def full_name 
		return "#{self.last_name}, #{self.first_name}"
	end 

	def set_role
		self.role_id = 1
	end 


end
