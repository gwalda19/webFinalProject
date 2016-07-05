class ScienceFeedController < ApplicationController
  skip_before_action :authorize

  def index
    @articles = Article.where("category = ? or category2 = ?", "science", "science").order("created_at DESC")
  end
end
