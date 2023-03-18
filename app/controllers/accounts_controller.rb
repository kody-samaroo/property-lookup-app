class AccountsController < ApplicationController

    def profile
        @account = Account.find(params[:id])
        @property = Property.where(account_id: @account.id)


        @properties_sold = Property.where(account_id: @account.id).sold.count
        @properties_for_sale = Property.where(account_id: @account.id).for_sale.count
        @properties_leased = Property.where(account_id: @account.id).leased.count
        @properties_for_rent = Property.where(account_id: @account.id).for_rent.count

    end

end
