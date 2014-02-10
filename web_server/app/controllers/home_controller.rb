class HomeController < ApplicationController
  before_action :initialize_guest_session, only: [:index]

  def index
  end

  private

  def initialize_guest_session
    if params[:guest_mode] == "true"
      session[:guest_id] ||= 'guest-' + SecureRandom.uuid
    else
      session.delete(:guest_id)
    end
  end
  
end
