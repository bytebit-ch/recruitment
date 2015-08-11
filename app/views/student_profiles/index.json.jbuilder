json.array!(@student_profiles) do |student_profile|
  json.extract! student_profile, :id, :student_id, :user_id, :first_name, :last_name, :github_url, :profile_img, :short_description, :long_decription, :skills, :part_time, :full_time, :contract, :public
  json.url student_profile_url(student_profile, format: :json)
end
