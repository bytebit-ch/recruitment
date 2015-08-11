json.array!(@business_listings) do |business_listing|
  json.extract! business_listing, :id, :skills_wanted, :title, :part_time, :full_time, :contract, :job_description, :contact_email
  json.url business_listing_url(business_listing, format: :json)
end
