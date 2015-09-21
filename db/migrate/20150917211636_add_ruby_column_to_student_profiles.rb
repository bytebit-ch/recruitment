class AddRubyColumnToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :ruby, :string
  end
end
