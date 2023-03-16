class AccountsController < ApplicationController

    def profile
        @account = Account.find(params[:id])
    end

end
