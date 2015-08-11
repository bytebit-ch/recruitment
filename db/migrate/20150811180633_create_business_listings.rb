class CreateBusinessListings < ActiveRecord::Migration
  def change
    create_table :business_listings do |t|
      t.text :skills_wanted
      t.text :title
      t.boolean :part_time
      t.boolean :full_time
      t.boolean :contract
      t.text :job_description
      t.text :contact_email

      t.timestamps null: false
    end
  end
end
