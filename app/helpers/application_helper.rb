module ApplicationHelper

    def profile_picture account
        thumb = account.image.present? ? account.image.thumbnail.url : "profile.png"
        image_tag thumb, class: "profile-picture img-circle", style: "border-radius: 30%; width: 100px;"
    end
end
