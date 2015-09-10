module ApplicationHelper
	def avatar_url(student_profile)
    	default_url = "#{root_url}images/guest.png"
    	gravatar_id = Digest::MD5.hexdigest(student_profile.profile_img.downcase)
    	"http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
  		
	end
end
