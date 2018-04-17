class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # XSS attack

#white-list approach: every routes is close (add exception in each controller)
  before_action :authenticate_user!

end

