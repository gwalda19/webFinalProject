class AddBylineToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :byline, :string
  end
end
