class BusinessListingsController < ApplicationController
  load_and_authorize_resource #checking auth
  #before_action :set_business_profile
  #before_action :set_business_listing, only: [:show, :edit, :update, :destroy]

  # GET /business_listings
  # GET /business_listings.json
  def index
    @business_listings = BusinessListing.all
  end
  

  # GET /business_listings/1
  # GET /business_listings/1.json
  def show
  end

  # GET /business_listings/new
  def new
    @business_listing = BusinessListing.new
  end

  # GET /business_listings/1/edit
  def edit
  end

  def view_profile
    @business_listing = BusinessListing.find(params[:id])
    @business_listing.business_profile_id = current_business_profile.id
  end

  # POST /business_listings
  # POST /business_listings.json
  def create
    @business_listing = BusinessListing.new(business_listing_params)
    @business_listing.business_profile_id = current_user.business_profile.id

    respond_to do |format|
      if @business_listing.save
        format.html { redirect_to @business_listing, notice: 'Business listing was successfully created.' }
        format.json { render :show, status: :created, location: @business_listing }
      else
        format.html { render :new }
        format.json { render json: @business_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_listings/1
  # PATCH/PUT /business_listings/1.json
  def update
    respond_to do |format|
      if @business_listing.update(business_listing_params)
        format.html { redirect_to @business_listing, notice: 'Business listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_listing }
      else
        format.html { render :edit }
        format.json { render json: @business_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_listings/1
  # DELETE /business_listings/1.json
  def destroy
    @business_listing.destroy
    respond_to do |format|
      format.html { redirect_to business_listings_url, notice: 'Business listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_listing
      @business_listing = BusinessListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_listing_params
      params.require(:business_listing).permit(:skills_wanted, :title, :part_time, :full_time, :contract, :job_description, :contact_email)
    end
end
