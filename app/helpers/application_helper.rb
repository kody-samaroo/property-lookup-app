module ApplicationHelper

    def profile_picture account
        thumb = account.image.present? ? account.image : "profile.png"
        image_tag thumb, class: "profile-picture img-circle", style: "border-radius: 30%; width: 100px;"
    end

    def profile_banner account
        banner = account.background_image.present? ? account.background_image : ""
        banner
    end

    def flash_notifications
        flash_messages = []

        flash.each do |type, message|
            type = 'success' if type == 'notice'
            type = 'error' if type == 'alert' || type == 'danger'
            text = "toastr['#{type}']('#{message}');"
            flash_messages << text.html_safe unless message.blank?
        end
        "<script>$(function(){ #{ flash_messages.join("\n") } });</script>".html_safe if flash_messages.any?
    end
end
