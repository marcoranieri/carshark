class PagesController < ApplicationController
# action#home is open to "all" user
  skip_before_action :authenticate_user!, only: :home

  def home
  end
end
