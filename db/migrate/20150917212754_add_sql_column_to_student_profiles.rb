class AddSqlColumnToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :sql, :string
  end
end
