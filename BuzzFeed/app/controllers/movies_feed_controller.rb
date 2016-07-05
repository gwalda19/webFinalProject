class MoviesFeedController < ApplicationController
  skip_before_action :authorize

  def index
    @articles = Article.where("category = ? or category2 = ?", "movies", "movies").order("created_at DESC")
  end
end
