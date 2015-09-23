class BusinessProfile < ActiveRecord::Base
	belongs_to :user
	has_many :business_listings

	validates_presence_of :business_name
	validates_uniqueness_of :user_id, :email
end
