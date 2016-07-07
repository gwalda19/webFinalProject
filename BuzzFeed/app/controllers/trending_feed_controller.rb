class TrendingFeedController < ApplicationController
  skip_before_action :authorize
  
  def index
    @articles = Article.order("RANDOM()")
  end

end
