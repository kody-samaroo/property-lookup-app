class AdminController < ApplicationController
    before_action :can_access?

    def accounts
        @accounts = Account.where(admin: false).paginate(page: params[:page], per_page: 20)
    end

    def can_access?
        @show_sidebar = true if account_signed_in?
        
        if current_account.admin?
            { success: "ADMIN ACCESS GRANTED" }
            return
        else
            redirect_to root_url, flash: { danger: "You do not have access to view this page" }
            return
        end
    end
end