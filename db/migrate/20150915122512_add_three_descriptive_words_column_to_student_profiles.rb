class AddThreeDescriptiveWordsColumnToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :three_descriptive_words, :text
  end
end
