class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.integer :student_id
      t.integer :user_id
      t.text :first_name
      t.text :last_name
      t.text :github_url
      t.text :profile_img
      t.text :short_description
      t.text :long_decription
      t.text :skills
      t.boolean :part_time
      t.boolean :full_time
      t.boolean :contract
      t.boolean :public

      t.timestamps null: false
    end
  end
end
