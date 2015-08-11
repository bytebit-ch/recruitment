json.array!(@business_profiles) do |business_profile|
  json.extract! business_profile, :id, :business_id, :user_id, :business_name, :url_of_business, :description_business
  json.url business_profile_url(business_profile, format: :json)
end
