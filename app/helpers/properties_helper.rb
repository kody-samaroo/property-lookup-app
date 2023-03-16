module PropertiesHelper

    def property_thumbnail property
        img = property.photo.present? ? property.photo.thumb.url : "house.jpeg"
        image_tag img, class: "property-thumb", width: "100%", height: "225px"
    end

    def property_thumbnail_url property
        property.photo.present? ? property.photo.thumb.url : asset_url("house.jpeg")
    end

    def property_banner_photo property
        img = property.photo.present? ? property.photo.thumb.url : asset_url("house.jpeg")
    end

end