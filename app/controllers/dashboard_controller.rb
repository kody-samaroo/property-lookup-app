class DashboardController < ApplicationController
  before_action :set_sidebar, except: [:show]

  def index
  end

  def about_us
  end

  private

  def set_sidebar
    @show_sidebar = true if account_signed_in?
  end

end
