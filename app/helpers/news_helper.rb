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

    def displayContentShort new
        contentShort = new.content[0,400]
    end

    def news_banner_photo new
        img = new.photo.present? ? new.photo : asset_url("announcement.jpeg")
    end

    def news_thumbnail new
        img = new.photo.present? ? new.photo : "announcement.jpeg"
        image_tag img, class: "news-thumb", width: "100%", height: "225px"
    end

    def news_thumbnail_url new
        new.photo.present? ? new.photo : asset_url("announcement.jpeg")
    end
end
