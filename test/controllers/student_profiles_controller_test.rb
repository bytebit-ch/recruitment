require 'test_helper'

class StudentProfilesControllerTest < ActionController::TestCase
  setup do
    @student_profile = student_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_profile" do
    assert_difference('StudentProfile.count') do
      post :create, student_profile: { contract: @student_profile.contract, first_name: @student_profile.first_name, full_time: @student_profile.full_time, github_url: @student_profile.github_url, last_name: @student_profile.last_name, long_decription: @student_profile.long_decription, part_time: @student_profile.part_time, profile_img: @student_profile.profile_img, public: @student_profile.public, short_description: @student_profile.short_description, skills: @student_profile.skills, student_id: @student_profile.student_id, user_id: @student_profile.user_id }
    end

    assert_redirected_to student_profile_path(assigns(:student_profile))
  end

  test "should show student_profile" do
    get :show, id: @student_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_profile
    assert_response :success
  end

  test "should update student_profile" do
    patch :update, id: @student_profile, student_profile: { contract: @student_profile.contract, first_name: @student_profile.first_name, full_time: @student_profile.full_time, github_url: @student_profile.github_url, last_name: @student_profile.last_name, long_decription: @student_profile.long_decription, part_time: @student_profile.part_time, profile_img: @student_profile.profile_img, public: @student_profile.public, short_description: @student_profile.short_description, skills: @student_profile.skills, student_id: @student_profile.student_id, user_id: @student_profile.user_id }
    assert_redirected_to student_profile_path(assigns(:student_profile))
  end

  test "should destroy student_profile" do
    assert_difference('StudentProfile.count', -1) do
      delete :destroy, id: @student_profile
    end

    assert_redirected_to student_profiles_path
  end
end
