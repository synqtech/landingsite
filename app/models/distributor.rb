class Distributor < ActiveRecord::Base

	validates_presence_of :company
	validates_presence_of :email
	validates_presence_of :name
	validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "is invalid" }
	validates_uniqueness_of :email
	validates_presence_of :phone
	validates_presence_of :address_1
	validates_presence_of :province
	validates_presence_of :country
	
end
