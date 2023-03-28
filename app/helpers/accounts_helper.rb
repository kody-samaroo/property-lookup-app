module AccountsHelper

    def find_date account
        day = account.created_at.strftime("%A")
        month = account.created_at.strftime("%B")
        date = account.created_at.day.ordinalize
        show_datetime = "#{day}, #{month} #{date}"
    end
end
