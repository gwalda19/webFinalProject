class TrendingFeedController < ApplicationController
  skip_before_action :authorize
  
  def index
    @articles = Article.order("created_at DESC")
  end

end
