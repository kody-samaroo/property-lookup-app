class PublicController < ApplicationController
  def main
    @properties = Property.latest.paginate(page: params[:page], per_page: 17)
    @news = News.all
  end

end
