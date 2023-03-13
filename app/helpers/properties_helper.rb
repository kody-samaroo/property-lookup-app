module PropertiesHelper


    def property_thumbnail property
        img = property.photo.present? ? property.photo.thumb.url : "house.jpeg"
        image_tag img, class: "property-thumb", width: "100%", height: "225px"
    end

end
