class AddHtmlColumnToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :html, :string
  end
end
