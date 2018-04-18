class PagesController < ApplicationController
# action#home is open to "all" user
#skip_before_action :authenticate_user!, only: :home

def home
  if params.has_key?(:q)
    @cars = Car.where('name LIKE ?', "%#{params[:q]}%")
  else
    @cars = Car.all
  end
end
end
