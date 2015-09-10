module ApplicationHelper
	#gravatar logic
	def avatar_url(student_profile)
    	gravatar_id = Digest::MD5.hexdigest(student_profile.profile_img.downcase)
		"http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
	end
end
