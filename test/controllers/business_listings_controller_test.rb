require 'test_helper'

class BusinessListingsControllerTest < ActionController::TestCase
  setup do
    @business_listing = business_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_listing" do
    assert_difference('BusinessListing.count') do
      post :create, business_listing: { contact_email: @business_listing.contact_email, contract: @business_listing.contract, full_time: @business_listing.full_time, job_description: @business_listing.job_description, part_time: @business_listing.part_time, skills_wanted: @business_listing.skills_wanted, title: @business_listing.title }
    end

    assert_redirected_to business_listing_path(assigns(:business_listing))
  end

  test "should show business_listing" do
    get :show, id: @business_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_listing
    assert_response :success
  end

  test "should update business_listing" do
    patch :update, id: @business_listing, business_listing: { contact_email: @business_listing.contact_email, contract: @business_listing.contract, full_time: @business_listing.full_time, job_description: @business_listing.job_description, part_time: @business_listing.part_time, skills_wanted: @business_listing.skills_wanted, title: @business_listing.title }
    assert_redirected_to business_listing_path(assigns(:business_listing))
  end

  test "should destroy business_listing" do
    assert_difference('BusinessListing.count', -1) do
      delete :destroy, id: @business_listing
    end

    assert_redirected_to business_listings_path
  end
end
