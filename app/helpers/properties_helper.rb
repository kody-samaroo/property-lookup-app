module PropertiesHelper

    def property_thumbnail property
        img = property.photo.present? ? property.photo : "house.jpeg"
        image_tag img, class: "property-thumb", width: "100%", height: "225px"
    end

    def property_thumbnail_url property
        property.photo.present? ? property.photo : asset_url("house.jpeg")
    end

    def property_banner_photo property
        img = property.photo.present? ? property.photo : asset_url("house.jpeg")
    end

    def set_datetime property
        day = @property.available_date.strftime("%A")
        month = @property.available_date.strftime("%B")
        date = @property.available_date.day.ordinalize
        show_datetime = "#{day}, #{month} #{date}"
    end

end
