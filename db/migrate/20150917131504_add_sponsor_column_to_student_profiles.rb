class AddSponsorColumnToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :sponsor, :boolean
  end
end
