class AddCssColumnToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :css, :string
  end
end
