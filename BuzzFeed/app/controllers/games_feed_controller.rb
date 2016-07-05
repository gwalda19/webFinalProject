class GamesFeedController < ApplicationController
  skip_before_action :authorize

  def index
    @articles = Article.where("category = ? or category2 = ?", "games", "games").order("created_at DESC")
  end

end
