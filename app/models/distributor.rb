class Distributor < ActiveRecord::Base

	validates_presence_of :email
	validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "is invalid" }
	validates_format_of :phone, 
    :message => "must be a valid telephone number.",
    :with => /^[\(\)0-9\- \+\.]{10,20} *[extension\.]{0,9} *[0-9]{0,
end
