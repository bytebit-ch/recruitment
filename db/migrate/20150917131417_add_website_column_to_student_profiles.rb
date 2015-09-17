class AddWebsiteColumnToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :website, :text
  end
end
