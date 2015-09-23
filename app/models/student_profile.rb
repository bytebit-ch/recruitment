class StudentProfile < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :first_name, :last_name
	 validates_uniqueness_of :user_id, :email
end
