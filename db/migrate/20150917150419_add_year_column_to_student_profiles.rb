class AddYearColumnToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :year, :text
  end
end
