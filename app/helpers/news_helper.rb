module NewsHelper

    def find_author new
        first = Account.where(id: new.account_id)[0].first_name
        last = Account.where(id: new.account_id)[0].last_name
        author = first + " " + last
    end

    def find_date new
        day = new.created_at.strftime("%A")
        month = new.created_at.strftime("%B")
        date = new.created_at.day.ordinalize
        show_datetime = "#{day}, #{month} #{date}"
    end
end
