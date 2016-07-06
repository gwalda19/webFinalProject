class Article < ActiveRecord::Base
  
  validates :title, :image_url, :body, :name, :byline, :category, :presence => true
 
  before_validation :lowercase_category
  before_validation :lowercase_category2

  def lowercase_category
    category.downcase!
  end
 
   def lowercase_category2
    category2.downcase!
  end
 
  def self.latest
    Article.order(:updated_at).last
  end
  
end
