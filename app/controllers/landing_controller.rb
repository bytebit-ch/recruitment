class LandingController < ApplicationController
  skip_authorization_check #skips auth because non logged in users can see this page
  def index
  end
end
