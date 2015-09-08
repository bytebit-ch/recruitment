class AddBusinessIdColumnToBusinessListings < ActiveRecord::Migration
  def change
    add_column :business_listings, :business_profile_id, :integer
  end
end
