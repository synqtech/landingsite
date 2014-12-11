class Distributor < ActiveRecord::Base

	validates_presence_of :email
	validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "is invalid" }
	validates_presence_of :phone
	
end
