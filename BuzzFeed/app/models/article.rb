class Article < ActiveRecord::Base
  
  def self.latest
    Article.order(:updated_at).last
  end
  
end
