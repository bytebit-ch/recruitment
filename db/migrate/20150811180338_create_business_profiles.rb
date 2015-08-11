class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.integer :business_id
      t.integer :user_id
      t.text :business_name
      t.text :url_of_business
      t.text :description_business

      t.timestamps null: false
    end
  end
end
