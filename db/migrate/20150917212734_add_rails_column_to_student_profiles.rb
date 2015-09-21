class AddRailsColumnToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :rails, :string
  end
end
