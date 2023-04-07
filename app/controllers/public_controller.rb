class PublicController < ApplicationController
  def main
    # if account_signed_in?
    #   redirect_to root_path, flash: { success: "Successfully signed in. Welcome to Fast Homes" } and return
    # end

    # if account_signed_in?
    #   path = current_account.admin? ? accounts_path : dashboard_path
    #   redirect_to path, flash: { success: "Successfully signed in. Welcome to Fast Homes" } and return
    # end

    @properties = Property.latest.paginate(page: params[:page], per_page: 17)
    @news = News.all
  end

end
