class MusicFeedController < ApplicationController
  skip_before_action :authorize

  def index
#    @articles = Article.where(category: "music").where(category2: "music").order("created_at DESC")
    @articles = Article.where("category = ? or category2 = ?", "music", "music").order("created_at DESC")
  end

end
