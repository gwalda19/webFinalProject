class AddCategory2ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :category2, :string
  end
end
